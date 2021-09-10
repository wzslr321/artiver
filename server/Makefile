.PHONY: all
all: build
FORCE: ;

SHELL := env LIBRARY_ENV=$(LIBRARY_ENV) $(SHELL)
LIBRARY_ENV ?= dev

BIN_DIR = $(PWD)/bin

.PHONY: build

clean:
	rm -rf bin/*

build: build-users

build-users:
	cd users && make build-users path="../bin/"

