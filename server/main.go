package main

import (
	"context"
	"fmt"
	"github.com/rs/cors"
	"github.com/wzslr321/artiver/routers"
	"github.com/wzslr321/artiver/settings"
	"log"
	"net/http"
	"os"
	"os/signal"
	"syscall"
	"time"
)

func main() {
	address := fmt.Sprintf(":%s", settings.ServerSettings.Address)
	router := cors.Default().Handler(routers.InitRouter())
	readTimeout := settings.ServerSettings.ReadTimeout
	writeTimeout := settings.ServerSettings.WriteTimeout
	maxHeaderBytes := settings.ServerSettings.MaxHeaderBytes

	server := &http.Server{
		Addr: address,
		Handler: router,
		ReadTimeout: readTimeout,
		WriteTimeout: writeTimeout,
		MaxHeaderBytes: maxHeaderBytes,
	}

	var err error

	err = server.ListenAndServe()

	log.Printf("Server is running on port: %s", address)

	go func() {
		if err = server.ListenAndServe(); err != nil && err != http.ErrServerClosed {
			log.Fatalf("Listen: %s\n", err)
		}
	}()

	quit := make(chan os.Signal)

	signal.Notify(make(chan os.Signal, 1), syscall.SIGINT, syscall.SIGTERM)
	<-quit
	log.Println("Shutting down the server...")

	ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
	defer cancel()

	if err = server.Shutdown(ctx); err != nil {
		log.Fatal("Server shutdown", err)
	}

	select {
	case <-ctx.Done():
		log.Println("Timeout of 5 seconds")
	}

	log.Println("Server exiting")
}
