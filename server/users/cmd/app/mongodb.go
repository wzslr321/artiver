package main

import (
	"context"
	"github.com/wzslr321/artiver/server/user/entity"
	"github.com/wzslr321/artiver/server/user/settings"
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
	"log"
	"time"
)

func initMongo() {

	oc := options.Client().ApplyURI(settings.MongodbSettings.Uri)

	client, err := mongo.NewClient(oc)
	if err != nil {
		log.Fatalf("Error occured while initializing a new mongo client: %v", err)
	}

	ctx, cancel := context.WithTimeout(context.Background(), 15*time.Second)
	defer cancel()

	err = client.Connect(ctx)
	if err != nil {
		log.Fatalf("Errorr occurred while connecting to a client: %v", err)
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
}

