# aws-cli
Simple Linux Container with AWS CLI installed.

## Start as a background Docker Container

Since it has Entrypoint `/bin/sh` you should add background and interactive flags in order to start it correctly:

`docker run -d -it pijer10/aws-cli:1.x`


## Start as a foreground Docker Container

Use this command:
`docker run pijer10/aws-cli:1.x aws ...`

## Start it as a Kubernetes Deployment Object

Use this Deployment structure:
```
apiVersion: apps/v1 
kind: Deployment
metadata:
  name: aws-cli
spec:
  selector:
    matchLabels:
      app: aws-cli
  template:
    metadata:
      labels:
        app: aws-cli
    spec:
      containers:
      - name: aws-cli-container
        image: pijer10/aws-cli:1.1
        command: ["tail"]
        args: ["-f", "/dev/null"]
```
