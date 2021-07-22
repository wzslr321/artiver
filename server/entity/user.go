package entity

import (
	"context"
	"github.com/wzslr321/artiver/api/db"
	"go.mongodb.org/mongo-driver/x/mongo/driver/uuid"
	"golang.org/x/crypto/bcrypt"
	"log"
	"os"
	"time"
)

type ID struct {
	id *uuid.UUID
}

type User struct {
	ID			ID
	Email		string
	Password 	string
	Username 	string
	CreatedAt 	time.Time
	UpdatedAt 	time.Time
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
		id: &id,
	}
}

func NewUser(email, password, username string) (*User, error) {
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

	err = Validate(u); if err != nil {
		return nil, err
	}

	usersCollection := db.MongoClient.Database("artiver").Collection("users")

	ctx := context.Background()

	_, err = usersCollection.InsertOne(ctx, u)

	return u, nil
}

func generatePasswordHash(pwd string) (string,error) {
	hash, err := bcrypt.GenerateFromPassword([]byte(pwd), 12); if err != nil {
		errorLog.Fatalf("Error while hashing password: %v", err)
	}

	return string(hash), nil
}



func Validate(u *User) error{
	// <!>
	// Validation have to be compatible with front-end auth,
	// which is not finished yet, thus for now validation
	// is kept simple, needs to be extended later.
	// <!>
	if u.Email == "" || u.Username == "" || u.Password == "" {
		return ValidationError
	}

 	return nil
}
