package db

import (
	"context"
	"github.com/wzslr321/artiver/settings"
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
	"log"
	"time"
)

var MongoClient *mongo.Client

func InitMongo() {

	oc := options.Client().ApplyURI(settings.MongodbSettings.Uri)

	var err error

	MongoClient, err = mongo.NewClient(oc)
	if err != nil {
		log.Fatalf("Error occured while initializing a new mongo client: %v", err)
	}

	ctx, cancel := context.WithTimeout(context.Background(), 15*time.Second)
	defer cancel()

	err = MongoClient.Connect(ctx)
	if err != nil {
		log.Fatalf("Errorr occurred while connecting to a client: %v", err)
	}

	defer func() {
		if err = MongoClient.Disconnect(ctx); err != nil {
			panic(err)
		}
	}()

	log.Println("Successfully connected to the database!")


}