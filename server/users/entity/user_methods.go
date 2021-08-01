package entity

import (
	"context"
	"github.com/wzslr321/artiver/server/user/pkg"
	"log"
	"time"
)


func (m *UserCollection) NewUser(email, password, username string) (*User, error) {
	id := pkg.GenerateID()

	pwd, err := pkg.GeneratePasswordHash(password); if err != nil {
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



