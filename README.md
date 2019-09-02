# GoRPC

### GRPC client written in go

Simple implementation of an grpc client written in go.
With Jenkins-X CI/CD pipeline

Build is done inside a golang container for dependency resolution

#### Prerequisites:

Minikube

Kubectl

Jenkins-x

Docker Desktop (macOS)
```

create ~/env.vars file

cd ~/
vi env.vars


TOKEN="YOUR_GITHUB_API_TOKEN"
USERNAME="YOUR__GITHUB_USERNAME"
EMAIL="YOUR_GITHUB_EMAIL"


Clone repo

git clone repo

cd ~/<cloned repo dir>
./deploy.sh -c

once complete
jx open jenkins

click "add pipeline"
find your fork on github
enter token

done

```



## Stop the cluster
```
minikube stop
```
## Start the cluster 
```
minikube start

kubectl config set-context $(kubectl config current-context) --namespace=jx

jx open jenkins
```

### Update the source code
```
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
