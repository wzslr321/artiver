package entity_test

import (
	"fmt"
	"github.com/stretchr/testify/assert"
	"github.com/wzslr321/artiver/server/user/entity"
	"github.com/wzslr321/artiver/server/user/pkg"
	"go.mongodb.org/mongo-driver/x/mongo/driver/uuid"
	"testing"
)

func TestNewUser(t *testing.T) {

	var ids [4]entity.ID

	for i := 0; i < 4; i++ {
		uid, err := pkg.GenerateID()
		assert.IsType(t, nil, err)
		id := entity.ID(uid)
		ids[i] = id
	}

	var fakeId *uuid.UUID

	tests := []struct {
		id    entity.ID
		email string
		uname string
		pwd   string
		err   error
	}{
		{
			id:    entity.ID(fakeId),
			email: "good@example.com",
			uname: "fineMan",
			pwd:   "C00lP@ssword",
			err:   entity.ValidationError,
		},
		{
			id:    ids[0],
			email: "bad",
			uname: "Michael2003",
			pwd:   "F1n3M@n",
			err:   entity.ValidationError,
		},
		{
			id:    ids[1],
			email: "g@d.com",
			uname: "1",
			pwd:   "S3CUr1ty@",
			err:   entity.ValidationError,
		},
		{
			id:    ids[2],
			email: "tesla@gmail.com",
			uname: "Elon Musk Fan",
			pwd:   "veryBad",
			err:   entity.ValidationError,
		},
		{
			id:    ids[3],
			email: "spaceX@gmail.com",
			uname: "ElonMusk",
			pwd:   "veryG00D!",
			err:   nil,
		},
	}

	// Surpress the warning for now
	fmt.Println(tests)
}
