# Simple example of a Docker server application

Build a Go API server in a Docker container

Code is from https://github.com/HakaseLabs/source-blog/blob/master/rest-api/main.go

To run the prebuilt version

`docker container run -p 8089:8000 --rm -d alecthegeek/api-server:latest`

Or build your own from the 

From the `PublishingNetworkPorts` directoryb build with `docker image build -t api-server .`

Run with `docker container run -p 8089:8000 --rm -d api-server:latest`
