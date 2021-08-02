package main

import (
	"context"
	"fmt"
	cors "github.com/rs/cors/wrapper/gin"
	"github.com/wzslr321/artiver/server/user/entity"
	"github.com/wzslr321/artiver/server/user/settings"
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
	"log"
	"net/http"
	"os"
	"os/signal"
	"syscall"
	"time"
)


type application struct {
	users *entity.UserCollection
}

var app *application

func init() {
	settings.InitSettings()
}


func main() {

	oc := options.Client().ApplyURI(settings.MongodbSettings.Uri)


	client, err := mongo.NewClient(oc)
	if err != nil {
		log.Printf("Error occured while initializing a new mongo client: %v", err)
	}

	ctx, cancel := context.WithTimeout(context.Background(), 15*time.Second)
	defer cancel()

	err = client.Connect(ctx)
	if err != nil {
		log.Printf("Errorr occurred while connecting to a client: %v", err)
	}

	defer func() {
		if err = client.Disconnect(ctx); err != nil {
			panic(err)
		}
	}()

	log.Println("Successfully connected to the database!")


	app = &application{
		users: &entity.UserCollection{
			C: client.Database("artiver").Collection("users"),
		},
	}

	address := fmt.Sprintf(":%s", settings.ServerSettings.Address)
	router := app.InitRouter()
	readTimeout := settings.ServerSettings.ReadTimeout
	writeTimeout := settings.ServerSettings.WriteTimeout
	maxHeaderBytes := settings.ServerSettings.MaxHeaderBytes

	router.Use(cors.Default())

	server := &http.Server{
		Addr:           address,
		Handler:        router,
		ReadTimeout:    readTimeout,
		WriteTimeout:   writeTimeout,
		MaxHeaderBytes: maxHeaderBytes,
	}

	err = server.ListenAndServe()

	log.Printf("Server is running on port:  %s", address)

	go func() {
		if err = server.ListenAndServe(); err != nil && err != http.ErrServerClosed {
			log.Fatalf("Listen: %s\n", err)
		}
	}()

	quit := make(chan os.Signal)


	signal.Notify(make(chan os.Signal, 1), syscall.SIGINT, syscall.SIGTERM)
	<-quit
	log.Println("Shutting down the server...")

	ctx, cancel = context.WithTimeout(context.Background(), 5*time.Second)
	defer cancel()

	if err = server.Shutdown(ctx); err != nil {
		log.Fatal("Server shutdown", err)
	}

	<-ctx.Done()
	log.Println("Timeout of 5 seconds")

	log.Println("Server exiting")

}
