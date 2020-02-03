FROM golang:1.13.7-alpine3.11
RUN apk add bash ca-certificates git gcc g++ libc-dev
RUN mkdir /app
ADD . /app/
WORKDIR /app
RUN go mod download
RUN go build -v
RUN ls
CMD ["/app/pacmanServer"]
