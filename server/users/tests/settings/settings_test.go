package settings_test

import (
	"github.com/stretchr/testify/assert"
	"github.com/wzslr321/artiver/server/user/settings"
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
		err := settings.InitSettings(test.source)
		assert.IsType(t, test.err, err)
	}

	mapToTests := []struct {
		source      string
		destination interface{}
		err         error
	}{
		{source: "server", destination: settings.ServerSettings, err: nil},
		{source: "mongodb", destination: settings.MongodbSettings, err: nil},
	}

	for _, test := range mapToTests {
		assert.NotEmpty(t, test.destination)
	}

}
