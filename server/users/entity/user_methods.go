package entity

import (
	"context"
	"github.com/wzslr321/artiver/server/user/pkg"
	"log"
	"time"
)

func (m *UserCollection) NewUser(email, username, password string) (*User, error) {
	uuid := pkg.GenerateID()
	id := ID{Id: uuid}

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



