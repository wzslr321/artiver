package settings

import (
	"github.com/stretchr/testify/assert"
	"gopkg.in/ini.v1"
	"testing"
)

func TestInitSettings(t *testing.T) {
	loadTests := []struct {
		source string
		result *ini.File
		err    error
	}{
		{source: "/conf/conf_dev.ini", err: nil},
		{source: "/conf/conf_prod.ini", err: nil},
	}

	for _, test := range loadTests {
		err := InitSettings(test.source)
		assert.IsType(t, test.err, err)
	}

	mapToTests := []struct {
		source      string
		destination interface{}
		err         error
	}{
		{source: "server", destination: ServerSettings, err: nil},
		{source: "mongodb", destination: MongodbSettings, err: nil},
	}

	for _, test := range mapToTests {
		err := mapTo(test.source, test.destination)
		assert.IsType(t, test.err, err)
		assert.NotEmpty(t, test.destination)
	}

}
