goji
====

goji samples

# How to Build and Install by Hand

```
export GOPATH=$PWD
go get -d ./lib/...
go install lib/json.go
```

# How to Build and Install with Makefile

* `make` -- Builds ./bin/json

You can use these targets too:

* `make build`
* `make get`
* `make clean`

# How to Run the goji program

Run server:

```
./bin/json
```

Request to the server:

```
curl http://localhost:8000/hello/gopher
```
