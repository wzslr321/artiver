package entity

import (
	"context"
	"github.com/wzslr321/artiver/server/user/pkg"
	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo"
	"log"
	"time"
)

func (m *UserCollection) NewUser(email, username, password string) (*User, error) {
	uuid := pkg.GenerateID()
	id := ID(uuid)

	pwd, err := pkg.GeneratePasswordHash(password); if err != nil {
		return nil, err
	}


	u := &User{
		Email: 		email,
		Username: 	username,
		Password: 	pwd,
		ID:			id,
		CreatedAt:  time.Now(),
	}

	err = validate(email, username, password); if err != nil {
		return nil, err
	}

	ctx := context.Background()

	_, err = m.C.InsertOne(ctx, u); if err != nil {
		log.Fatalf("Failed to insert a user into a database: %v", err)
		return nil, DatabaseError
	}

	return u, nil
}
/*
func (m *UserCollection) GetAllUsers() (*mongo.Cursor, error){
	ctx := context.Background()

	cursor, error := m.C.Find(ctx, bson.D{{"*", "*"}})


}
 */

func (m *UserCollection) GetUserByUsername(username string) *mongo.SingleResult {
	ctx := context.Background()
	res := m.C.FindOne(ctx, bson.D{{"username", username}})
	log.Println(res)

	return res
}



