FROM golang:latest  
WORKDIR /app 
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN GOOS=linux go build -o gocall
EXPOSE 9000
ENTRYPOINT ./gocall

