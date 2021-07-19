package api

import (
	"context"
	"github.com/wzslr321/artiver/settings"
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
	"go.mongodb.org/mongo-driver/mongo/readpref"
	"log"
	"time"
)

func InitMongo() {
	ctx, cancel := context.WithTimeout(context.Background(), 10*time.Second)

	uri := settings.MongodbSettings.Uri + ":" + settings.MongodbSettings.Address

	defer cancel()
	client, err := mongo.Connect(ctx, options.Client().ApplyURI(uri))
	if err != nil {
		panic(err)
	}
	defer func() {
		if err = client.Disconnect(ctx); err != nil {
			panic(err)
		}
	}()

	if err = client.Ping(ctx, readpref.Primary()); err != nil {
		log.Fatalf("Error occured while pinging client: %v", err)
	}

	log.Println("Successfully connected to the database!")
}