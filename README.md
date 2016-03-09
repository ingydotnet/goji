goji
====

goji samples

# Overview

The point of this repository is to show the simplest possible example of a Go
program (with external dependencies) that builds and installs completely
within the cloned directory. In other words, just clone and build, with no
fuss:

    git clone https://github.com/ingydotnet/goji
    cd goji
    make
    ./bin/json
    cd ..
    rm -fr goji

Everything happened inside the `goji` directory. No artifacts were left around
after deletion.

This program was originally forked from:
https://github.com/golang-samples/goji

# How to Build and Install with Makefile

* `make` -- Builds `./bin/json`. That's all.

You can use these targets too:

* `make build`
* `make get`
* `make clean`

# How to Build and Install by Hand

```
export GOPATH=$PWD
export GOBIN=$PWD/bin
go get -d ./lib/...
go install lib/json.go
```

# How to Run the goji program

Run server:

```
./bin/json
```

Request to the server:

```
curl http://localhost:8000/hello/gopher
```
