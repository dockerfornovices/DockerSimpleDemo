# Simple example of a Docker server applcation

Build a Go API server in a Docker container

Code is from https://github.com/HakaseLabs/source-blog/blob/master/rest-api/main.go

Fromt he `serverCode` directorybBuild with `docker image build -t api-server .`

Run with `docker container run -p 8089:8000 --rm -d api-server:latest`
