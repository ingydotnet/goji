goji
====

goji samples

# How to Build and Install by Hand

```
export GOPATH=$PWD
export GOBIN=$GOPATH/bin
go get ./lib/...
go install lib/json.go
```

# How to Build and Install with Makefile

* `make build`
* `make install`
* `make get`
* `make clean`

# goji json sample

Run server:

```
$ go run json.go
```

Request to the server:

```
curl http://localhost:8000/hello/gopher
```
