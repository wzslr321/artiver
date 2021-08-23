package entity_test

import (
	"github.com/stretchr/testify/assert"
	"github.com/wzslr321/artiver/server/user/entity"
	"testing"
)

func TestValidateEmail(t *testing.T) {
	tests := []struct {
		email string
		isOK  bool
	}{
		{email: "hello@gmail.com", isOK: true},
		{email: "@", isOK: false},
		{email: "bad_hacker", isOK: false},
		{email: "better_hacker@", isOK: false},
		{email: "best_hacker@!", isOK: true},
		{email: "c@t", isOK: true},
	}

	for _, test := range tests {
		isOK := entity.ValidateEmail(test.email)
		assert.Equal(t, test.isOK, isOK)
	}
}
