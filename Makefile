export GOPATH := $(PWD)
export GOBIN := $(PWD)/bin

GO_MAIN_NAME := ./json.go

default: build

get:
	go get ./...

build install: get
	go $@ $(GO_MAIN_NAME)

clean:
	rm -fr json bin pkg src
