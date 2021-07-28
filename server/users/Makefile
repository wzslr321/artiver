# Whole file comes from great clean-architecture repo - https://github.com/eminetto/clean-architecture-go-v2/blob/master/Makefile
.PHONY: all
all: build
FORCE: ;

SHELL  := env LIBRARY_ENV=$(LIBRARY_ENV) $(SHELL)
LIBRARY_ENV ?= dev

BIN_DIR = $(PWD)/bin

.PHONY: build

clean:
	rm -rf bin/*

dependencies:
	go mod download
  
build: dependencies build-users

build-users:
	go build -o $(path)users cmd/app/*

ci: dependencies test

test:
	go test -tags testing ./...

fmt: ## gofmt and goimports all go files
	find . -name '*.go' -not -wholename './vendor/*' | while read -r file; do gofmt -w -s "$$file"; goimports -w "$$file"; done