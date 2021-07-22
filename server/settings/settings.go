package settings

import (
	"github.com/wzslr321/artiver/conf"
	"gopkg.in/ini.v1"
	"log"
	"time"
)

type Server struct {
	RunMode 		string
	Address 		string
	ReadTimeout 	time.Duration
	WriteTimeout 	time.Duration
	MaxHeaderBytes 	int
}

var ServerSettings = &Server{}

var cfg *ini.File

type Mongodb struct {
	Uri	    string
}

var MongodbSettings = &Mongodb{}

func InitSettings() {
	var err error

	cfg, err = ini.Load(conf.GetRootDir() + "/conf/conf_dev.ini")
	if err != nil {
		log.Fatalf("settings setup, failed to parse 'conf/conf_dev.ini' : %v", err)
	}

	mapTo("server",  ServerSettings)
	mapTo("mongodb", MongodbSettings)
	ServerSettings.ReadTimeout = ServerSettings.ReadTimeout * time.Second
	ServerSettings.WriteTimeout = ServerSettings.WriteTimeout * time.Second
}

func mapTo(section string, v interface{}) {
	err := cfg.Section(section).MapTo(v)
	if err != nil {
		log.Fatalf("Error while mapping to config or section: %v, \n %v", section, err)
	}
}