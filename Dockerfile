FROM golang:1.16-alpine

WORKDIR /app

COPY go.mod ./
RUN go mod download

COPY *.go ./

RUN go build -o /jsg-power-app

EXPOSE 3000

CMD [ "/jsg-power-app" ]
