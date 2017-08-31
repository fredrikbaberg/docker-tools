FROM alpine:latest

RUN apk add --no-cache git go govendor build-base

RUN GOPATH=~/go go get github.com/kardianos/govendor
RUN GOPATH=~/go govendor get github.com/gohugoio/hugo
RUN GOPATH=~/go go install github.com/gohugoio/hugo

FROM alpine:latest
WORKDIR /root/
COPY --from=0 /root/go/bin/hugo /bin/hugo
WORKDIR /site
VOLUME /site
EXPOSE 1313