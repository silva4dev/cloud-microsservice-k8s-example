FROM golang:1.15

WORKDIR /go/src/app

COPY . .

RUN GOOS=linux go build -o app
RUN ls -la
EXPOSE 9091

ENTRYPOINT [ "./app" ]