package entity

import (
	"context"
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/x/mongo/driver/uuid"
	"golang.org/x/crypto/bcrypt"
	"log"
	"os"
	"time"
)

type ID struct {
	Id *uuid.UUID
}

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

var errorLog = log.New(os.Stdout, "ERROR\t,", log.Ldate|log.Ltime|log.Lshortfile)

func generateID() ID {
	id,err := uuid.New(); if err != nil {
		errorLog.Fatalf("Error while generating a unique id: %v", err)
	}

	return ID{
		Id: &id,
	}
}

func (m *UserCollection) NewUser(email, password, username string) (*User, error) {
	id := generateID()

	pwd, err := generatePasswordHash(password); if err != nil {
		return nil, err
	}

	u := &User{
		ID:		id,
		Email: 	email,
		Password: pwd,
		Username: username,
		CreatedAt: time.Now(),
	}

	err = validate(u); if err != nil {
		return nil, err
	}

	ctx := context.Background()

	_, err = m.C.InsertOne(ctx, u); if err != nil {
		log.Fatalf("Failed to insert a user into a database: %v", err)
		return nil, DatabaseError
	}

	return u, nil
}

func generatePasswordHash(pwd string) (string,error) {
	hash, err := bcrypt.GenerateFromPassword([]byte(pwd), 12); if err != nil {
		errorLog.Fatalf("Error while hashing password: %v", err)
	}

	return string(hash), nil
}


