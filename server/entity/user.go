package entity

import (
	"go.mongodb.org/mongo-driver/x/mongo/driver/uuid"
	"golang.org/x/crypto/bcrypt"
	"log"
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

func generateID() ID {
	id,err := uuid.New(); if err != nil {
		log.Fatalf("Error while generating a unique id: %v", err)
	}

	return ID{
		id: &id,
	}
}

func NewUser(email, password, username string) (*User, error) {
	id := generateID()

	pwd, err := generatePassword(password); if err != nil {
		return nil, err
	}

	u := &User{
		ID:		id,
		Email: 	email,
		Password: pwd,
		Username: username,
		CreatedAt: time.Now(),
	}

	Validate(u)

	return u, nil

}

func generatePassword(pwd string) (string,error) {
	hash, err := bcrypt.GenerateFromPassword([]byte(pwd), 12); if err != nil {
		log.Fatalf("Error while hashing password: %v", err)
	}

	return string(hash), nil
}



func Validate(u *User) {
	// <!>
	// Validation have to be compatible with front-end auth,
	// which is not finished yet, thus for now validation
	// is kept simple, needs to be extended later.
	// <!>
	if u.Email == "" || u.Username == "" || u.Password == "" {
		// Custom error needs to be implemented and returned
		// here instead
		log.Fatalf("User did not pass the validation")
	}

}
