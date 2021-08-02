package entity

import (
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/x/mongo/driver/uuid"
	"time"
)

type ID *uuid.UUID


type UserCollection struct {
	C *mongo.Collection
}

type User struct {
	ID        ID
	Email     string
	Password  string
	Username  string
	CreatedAt time.Time
	UpdatedAt time.Time
	// Preferences are an array of keywords that are used to filter and personalize articles.
	Preferences []string
	// Liked articles - contains an array of ID to make it more effective
	// than storing whole articles. IDs will be simply used as a reference.
	Liked 		[]ID
	// Articles - List of articles written by user. Holds an array of IDs
	// to use them as a reference.
	Articles 	[]ID
	// Reviews - List of reviews written by user. Holds an array of IDs
	// to use them as a reference.
	Reviews 	[]ID
}