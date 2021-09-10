package settings

import (
	"github.com/wzslr321/artiver/server/user/conf"
	"gopkg.in/ini.v1"
	"log"
	"time"
)

type Server struct {
	RunMode        string
	Address        string
	ReadTimeout    time.Duration
	WriteTimeout   time.Duration
	MaxHeaderBytes int
}

var ServerSettings = &Server{}

var cfg *ini.File

type Mongodb struct {
	Uri string
}

var MongodbSettings = &Mongodb{}

func InitSettings(source string) error {
	var err error

	dir, _ := conf.GetConfDir()
	cfg, err = ini.Load(dir + source)
	if err != nil {
		log.Fatalf("settings setup, failed to parse 'conf/conf_dev.ini' : %v", err)
		return err
	}

	_ = mapTo("server", ServerSettings)
	_ = mapTo("mongodb", MongodbSettings)
	ServerSettings.ReadTimeout = ServerSettings.ReadTimeout * time.Second
	ServerSettings.WriteTimeout = ServerSettings.WriteTimeout * time.Second

	return nil
}

func mapTo(section string, v interface{}) error {
	err := cfg.Section(section).MapTo(v)
	if err != nil {
		log.Fatalf("Error while mapping to config or section: %v, \n %v", section, err)
		return err
	}
	return nil
}
