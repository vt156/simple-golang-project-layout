FROM golang:1.16-alpine as build

RUN apk add build-base

WORKDIR /app

# cache dependencies
ADD go.mod .
ADD */*/go.mod /app/
RUN go mod download

# build
ADD . .
RUN go build -o your-entrypoint-1 cmd/your-entrypoint-1/main.go

# copy binary to the clean image
FROM alpine:latest
COPY --from=build /app/your-entrypoint-1 your-entrypoint-1
ADD env/.docker.env.sh env/.docker.env.sh

ENTRYPOINT [ "/your-entrypoint-1" ]
