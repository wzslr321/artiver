package entity

import (
	"context"
	"fmt"
	"github.com/wzslr321/artiver/server/user/pkg"
	"github.com/wzslr321/artiver/server/user/presenter"
	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo"
	"log"
	"time"
)

func (m *UserCollection) NewUser(email, username, password string) (*User, error) {
	uuid := pkg.GenerateID()
	id := ID(uuid)

	pwd, err := pkg.GeneratePasswordHash(password)
	if err != nil {
		return nil, err
	}

	u := &User{
		ID: id,
		Email:     email,
		Username:  username,
		Password:  pwd,
		CreatedAt: time.Now(),
	}

	err = validate(email, username, password)
	if err != nil {
		return nil, err
	}

	ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
	defer cancel()

	_, err = m.C.InsertOne(ctx, u)
	if err != nil {
		log.Fatalf("Failed to insert a user into a database: %v", err)
		return nil, DatabaseError
	}

	return u, nil
}

// This function currently is redundant.
//
// It returns an array of KeyValue objects,
// which contains particular fields of User's model.
// It actually may turn out to be useful,
// and become a method to display similar profiles
// to our interests.

/*
func (m *UserCollection) GetAllUsers() ([]bson.D, error) {
	ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
	defer cancel()

	cursor, err := m.C.Find(ctx, bson.D{})
	if err != nil {
		log.Printf("Error occurred while executing .Find method on users collection: %v", err)
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
			log.Printf("Error occurred while decoding users cursor result: %v", err)
		}
		usersList = append(usersList, result)
	}

	if err = cursor.Err(); err != nil {
		log.Printf("Cursor returned error: %v", err)
	}

	return usersList, err
}

 */

func (m *UserCollection) GetUserByUsername(username string) bson.M {
	ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
	defer cancel()

	var result bson.M

	err := m.C.FindOne(ctx, bson.D{{"username", username}}).Decode(&result)
	if err == mongo.ErrNoDocuments {
		msg := "Record \"username\" does not exist"
		fmt.Println(msg)
	} else if err != nil {
		log.Printf("Error occured while executing .FindOne method on UserCollection: %v", err)
	}

	fmt.Printf("result: %v\n", result)

	return result
}

func (m *UserCollection) DeleteUserById(id []byte) *mongo.DeleteResult {
	ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
	defer cancel()

	result, err := m.C.DeleteOne(ctx, bson.D{{"id", id}})
	if err != nil {
		log.Printf("Error occured while deleting a User: %v", err)
	}

	log.Println(result.DeletedCount)

	return result

}

func (m *UserCollection) UpdateUser(user *presenter.User) bson.M {
	ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
	defer cancel()

	var updatedUser bson.M

	update := bson.D{
		{"$set", bson.D{
			{"username", user.Username},
			{"updatedat", time.Now()},
			{"reviews", user.Reviews},
			{"preferences", user.Preferences},
			{"password", user.Password},
			{"email", user.Email},
			{"articles", user.Articles},
			{"id", user.ID},
		}},
	}

	err := m.C.FindOneAndUpdate(ctx, bson.D{{"id", user.ID}},update).Decode(&updatedUser)
	if err != nil {
		if err == mongo.ErrNoDocuments {
			msg := "Document with specified id does not exist"
			fmt.Println(msg)
		}
		log.Printf("Error occured while exeuting .FindOneAndUpdate method: %v", err)
	}

	return updatedUser
}
