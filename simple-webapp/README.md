# Simple Static Website

Sample nginx based static website application.

## Build
To build the application, use the docker build command:

```
docker build . -t webapp:demo
```

This will build a docker contained with a name "webapp" and lable "demo"

## Run
Container will launch an nginx webserver and by default listen to incoming connections at port 8080.


## Configuration


| Environment variable| Default value | Description                                  |
|---------------------|---------------|----------------------------------------------|
| PORT                | 8080          | Web server port                              |


