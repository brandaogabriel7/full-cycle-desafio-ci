FROM golang:alpine AS builder

RUN apk update && apk add --no-cache git
WORKDIR $GOPATH/src/mypackage/myapp/
COPY /src/full-cycle-desafio-ci .

RUN go get -d -v

RUN GOOS=linux GOARCH=amd64 go build -ldflags="-w -s" -o /go/bin/full-cycle-desafio-ci

FROM scratch

COPY --from=builder /go/bin/full-cycle-desafio-ci /go/bin/full-cycle-desafio-ci

ENTRYPOINT ["/go/bin/full-cycle-desafio-ci"]