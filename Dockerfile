FROM golang:1.5

RUN go get  github.com/mitchellh/gox \
            github.com/golang/lint/golint \
            github.com/mattn/goveralls \
            golang.org/x/tools/cover \
            github.com/tools/godep \
            github.com/aktau/github-release

WORKDIR /go/src/github.com/docker/machine

ADD . /go/src/github.com/docker/machine
