export GOPATH := $(PWD)
export GOBIN := $(PWD)/bin

GO_IMPORT_PATH := $(shell git config remote.origin.url)
GO_IMPORT_PATH := $(GO_IMPORT_PATH:git@%.git=%)
GO_IMPORT_PATH := $(subst :,/,$(GO_IMPORT_PATH))

GO_MAIN_NAME := ./json.go

get:
	go get $(GO_IMPORT_PATH)/...

build install: get
	go $@ $(GO_MAIN_NAME)

clean:
	rm -fr json bin pkg src
