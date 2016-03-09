goji
====

goji -- sample Go program

# Overview

The point of this repository is to show the simplest possible example of a Go
program (with external dependencies) that builds and installs completely
within the cloned directory. Just clone, build, test with no fuss:

    git clone https://github.com/ingydotnet/goji
    (cd goji; make install test)
    rm -fr goji

Everything happened inside the `goji` directory. No GOPATH setup was required.
No artifacts were left around afterwards.

This program was originally forked from:
https://github.com/golang-samples/goji

# How to build and install with Makefile

* `make` -- Builds `./bin/json`.

You can use these targets too:

* `make install`
* `make build`
* `make test`
* `make get`
* `make clean`

# How to build and install by hand

```
export GOPATH=$PWD
export GOBIN=$PWD/bin
go get -d ./lib/...
go install lib/json.go
```

# How to run/test the goji program

Run the server:

```
./bin/json
```

Request to the server:

```
curl http://localhost:8000/hello/gopher
```
