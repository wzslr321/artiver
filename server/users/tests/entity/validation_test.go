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
		err   error
	}{
		{email: "@", isOK: false, err: entity.ValidationError},
		{email: "bad_hacker", isOK: false, err: entity.ValidationError},
		{email: "better_hacker@", isOK: false, err: entity.ValidationError},
		{email: "hello@gmail.com", isOK: true, err: nil},
		{email: "best_hacker@!", isOK: true, err: nil},
		{email: "c@t", isOK: true, err: nil},
	}

	for _, test := range tests {
		isOK, err := entity.ValidateEmail(test.email)
		assert.IsType(t, test.err, err)
		assert.Equal(t, test.isOK, isOK)
	}
}

func TestValidatePasswords(t *testing.T) {
	tests := []struct {
		pwd  string
		isOK bool
		err  error
	}{
		{pwd: "very_b@d_hacker", isOK: false, err: entity.ValidationError},
		{pwd: "too_long_hacker_123@", isOK: false, err: entity.ValidationError},
		{pwd: "sh0rt:(", isOK: false, err: entity.ValidationError},
		{pwd: "notworseh@ck3r", isOK: false, err: entity.ValidationError},
		{pwd: "MikeFortnite2015!", isOK: false, err: entity.ValidationError},
		{pwd: "g00dH@ck3r", isOK: true, err: nil},
		{pwd: "Enough1@34erg", isOK: true, err: nil},
	}

	for _, test := range tests {
		isOK, err := entity.ValidatePassword(test.pwd)
		assert.IsType(t, test.err, err)
		assert.Equal(t, test.isOK, isOK)
	}
}

func TestValidateUsername(t *testing.T) {
	tests := []struct {
		uname string
		isOK  bool
		err   error
	}{
		{uname: "michaelfortnite2015", isOK: false, err: entity.ValidationError},
		{uname: "no", isOK: false, err: entity.ValidationError},
		{uname: "coolUsername", isOK: true, err: nil},
		{uname: "C00l_Us3r!", isOK: true, err: nil},
	}

	for _, test := range tests {
		isOK, err := entity.ValidateUsername(test.uname)
		assert.IsType(t, test.err, err)
		assert.Equal(t, test.isOK, isOK)
	}
}

func TestValidate(t *testing.T) {
	tests := []struct {
		email string
		uname string
		pwd   string
		isOK  bool
		err   error
	}{
		{
			email: "..",
			uname: "CoolGuy",
			pwd:   "VeryGood123@",
			isOK:  false,
			err:   entity.ValidationError,
		},
		{
			email: "goodemail@gmail.com",
			uname: "VeryBadEmailWhySoLong...",
			pwd:   "C00lPwd@@",
			isOK:  false,
			err:   entity.ValidationError,
		},
		{
			email: "fine@gmail.com",
			uname: "CoolMan",
			pwd:   "bad",
			isOK:  false,
			err:   entity.ValidationError,
		},
		{
			email: "nice@gmail.com",
			uname: "Pro Man123",
			pwd:   "SeCur1ty@!",
			isOK:  true,
			err:   nil,
		},
	}

	for _, test := range tests {
		isOK, err := entity.Validate(test.email, test.uname, test.pwd)
		assert.IsType(t, test.err, err)
		assert.Equal(t, test.isOK, isOK)
	}
}
