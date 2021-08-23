package conf

import (
	"github.com/stretchr/testify/assert"
	"testing"
)

func TestGetConfDir(t *testing.T) {
	result, ok := GetConfDir()
	assert.NotEmpty(t, result)
	assert.IsType(t, ok, true)
}
