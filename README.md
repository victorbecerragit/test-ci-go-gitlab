
1- clone the repo


2- Download package dependences from go.sum

$cd project
 $go get -v

 Review go env dependeces downloaded

 $cd `go env GOPATH` && cd pkg/mod/github.com
 or
 $ls -lrtd `go env GOPATH`/pkg/mod/github.com/*


3 - Compile the binary go

$go build -o j2m

4- Test binary file 

$./j2m

 ┌───────────────────────────────────────────────────┐
 │                   Fiber v2.15.0                   │
 │              http://127.0.0.1:34675               │
 │      (bound on host 0.0.0.0 and port 34675)       │
 │                                                   │
 │ Handlers ............. 2  Processes ........... 1 │
 │ Prefork ....... Disabled  PID ............. 16479 │
 └───────────────────────────────────────────────────┘


Optional: 
Compile for linux ARCH amd64

$CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o j2m-lnx64

NOTE: This binary file only will work on linux machine, if you test it on MAC os will not work.

5- Build the Docker image file

$docker build -f <your_dockerhub_user>/j2m-lnx64:v1 .

 Verify the docker image created

$docker images |grep j2m
victorbecerra/j2m-lnx64                         v1                   2990b16f4e49   45 seconds ago   15MB

6 - Perform some test

$go test -v

$go test -coverprofile=cover.txt
PASS
coverage: 11.1% of statements
ok      example.com/j2m-test    0.006s


$go tool cover -html=cover.txt -o cover.html

11.1% mean that the red code from cover.html is not been executed by go.


# test-ci-go-gitlab
