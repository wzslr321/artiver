package pkg

import (
	"go.mongodb.org/mongo-driver/x/mongo/driver/uuid"
	"golang.org/x/crypto/bcrypt"
	"log"
	"os"
)

var errorLog = log.New(os.Stdout, "ERROR\t,", log.Ldate|log.Ltime|log.Lshortfile)

func GeneratePasswordHash(pwd string) (string,error) {
	hash, err := bcrypt.GenerateFromPassword([]byte(pwd), 12); if err != nil {
		errorLog.Fatalf("Error while hashing password: %v", err)
	}

	return string(hash), nil
}

func GenerateID() *uuid.UUID {
	id,err := uuid.New(); if err != nil {
		errorLog.Fatalf("Error while generating a unique id: %v", err)
	}

	return &id
}
