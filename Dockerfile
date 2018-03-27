# Start from a Debian image with the latest version of Go installed
# and a workspace (GOPATH) configured at /go.
FROM golang

WORKDIR /go/src/app
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

# Run the outyet command by default when the container starts.
CMD ["app"]

# Document that the service listens on port 8080.
EXPOSE 8000
