# Build and install this sample Golang program.
# Need to set these Go vars for the local environment.
export GOPATH := $(PWD)
export GOBIN := $(PWD)/bin

# Go sources need to be under `./lib`:
GO_MAIN_NAME := ./lib/json.go

default: build

# Build and install into `./bin/json`:
build: get
	go install $(GO_MAIN_NAME)

# Get all the external dependencies, and store them locally:
get:
	go get -d ./lib/...

# Remove all the build artifacts:
clean:
	rm -fr json bin pkg src
