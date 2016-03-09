# Build and install this sample Golang program.
# Need to set these Go vars for the local environment.
export GOPATH := $(PWD)
export GOBIN := $(PWD)/bin

# Go sources need to be under `./lib`:
LIB_NAME := ./lib/json.go
BIN_NAME := ./bin/json

# `make` == `make install`
default: install

# Build and install into `./bin/json`:
build install: get
	go $@ $(LIB_NAME)

# Get all the external dependencies, and store them locally:
get:
	go get -d ./lib/...

# Run the server and make a request:
test:
	@( set -ex; \
	    $(BIN_NAME) & \
	    pid=$$!; \
	    curl http://localhost:8000/hello/gopher; \
	    kill $$pid; \
	)


# Remove all the build artifacts:
clean:
	git clean -dxf
