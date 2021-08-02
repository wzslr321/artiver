package entity

import (
	"context"
	"fmt"
	"github.com/wzslr321/artiver/server/user/pkg"
	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo"
	"log"
	"time"
)

// <!> TODO <!> replace ctx vars = context.Background with:
//
// ctx, cancel = context.WithTimeout(context.Background(), 5*time.Second)
// defer cancel()

func (m *UserCollection) NewUser(email, username, password string) (*User, error) {
	uuid := pkg.GenerateID()
	id := ID(uuid)

	pwd, err := pkg.GeneratePasswordHash(password)
	if err != nil {
		return nil, err
	}

	u := &User{
		Email:     email,
		Username:  username,
		Password:  pwd,
		ID:        id,
		CreatedAt: time.Now(),
	}

	err = validate(email, username, password)
	if err != nil {
		return nil, err
	}

	ctx := context.Background()

	_, err = m.C.InsertOne(ctx, u)
	if err != nil {
		log.Fatalf("Failed to insert a user into a database: %v", err)
		return nil, DatabaseError
	}

	return u, nil
}
func (m *UserCollection) GetAllUsers() ([]bson.D, error) {
	ctx := context.Background()

	cursor, err := m.C.Find(ctx, bson.D{})
	if err != nil {
		log.Printf("Error occured while executing .Find method on users collection: %v", err)
	}
	defer func(cursor *mongo.Cursor, ctx context.Context) {
		err = cursor.Close(ctx)
		if err != nil {
			log.Printf("Unable to close cursor: %v", err)
		}
	}(cursor, ctx)

	var usersList []bson.D

	for cursor.Next(ctx) {
		var result bson.D
		err = cursor.Decode(&result)
		if err != nil {
			log.Printf("Eror occured while decoding users cursor result: %v", err)
		}
		usersList = append(usersList,result)
	}

	if err = cursor.Err(); err != nil {
		log.Printf("Cursor returned error: %v", err)
	}

	return usersList, err
}

func (m *UserCollection) GetUserByUsername(username string) interface{} {
	ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
	defer cancel()

	var result struct {
		Value float64
	}

	err := m.C.FindOne(ctx, bson.D{{"username", username}}).Decode(&result)
	if err == mongo.ErrNoDocuments {
		msg := "Record \"username\" does not exist"
		fmt.Println(msg)
	} else if err != nil {
		log.Printf("Error occured while executing .FindOne method on UserCollection: %v", err)
	}

	return result
}
