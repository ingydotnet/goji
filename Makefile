export GOPATH := $(PWD)

GO_MAIN_NAME := ./lib/json.go

default: build

build: get
	go install $(GO_MAIN_NAME)

get:
	go get -d ./lib/...

clean:
	rm -fr json bin pkg src
