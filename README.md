# GoRPC

### GRPC client written in go

Simple implementation of an grpc client written in go.

### Clone the repository
```
cd $SRC
git clone git@github.com:sbadakhc/gorpc.git
cd goroc
```

### Update the source code

Modify the source code to point to the ip address or hostname of your endpoint. 
```
vi main.go
:%s/IP_ADDRESS/XXX.XXX.XXX.XXX/g
```

### Build the binary
Use the appropriate options for your OS.
```
GOOS=linux go build -o ./gorpc .
```

### Execute the binary
The client will attempt to connect to your endpoint and report back.
```
./gorpc 
f_string:"Connection Successful" 

```
