# Simple example of a Docker server application

Build a Go API server in a Docker container

Go API code is from https://github.com/HakaseLabs/source-blog/blob/master/rest-api/main.go

From the this directory build with `docker image build -t api-server .`

Run with `docker container run -p 8089:8000 --rm -d api-server:latest`

Test with `curl -v http://0.0.0.0:9089/people`

Get Health check status with `docker container inspect --format '{{.State.Health.Status}}' <ID>"`,
or `docker container inspect --format '{{json .State.Health.Status}}'|jq`
if [jq](https://stedolan.github.io/jq/) is installed
