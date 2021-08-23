package pkg

import (
	"github.com/stretchr/testify/assert"
	"go.mongodb.org/mongo-driver/x/mongo/driver/uuid"
	"testing"
)

func TestGeneratePasswordHash(t *testing.T) {
	tests := []struct {
		pwd string
		err error
	}{
		{"first_test", nil},
		{"SomeDummyP@ssword!", nil},
		{"My5t4r1ou5 3yph3r", nil},
		{"polyglot..", nil},
	}

	for _, test := range tests {
		result, err := GeneratePasswordHash(test.pwd)
		assert.IsType(t, test.err, err)
		assert.NotEmpty(t, result)
	}
}

func TestGenerateID(t *testing.T) {
	var err error
	var result *uuid.UUID

	r, e := GenerateID()
	assert.IsType(t, err, e)
	assert.IsType(t, result, r)
	assert.NotEmpty(t, r)
}
