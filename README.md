# Simple Web Project

## Usage
```
$ nodemon bin/www
```


### Docker CMD

#### Build Image
```
$ docker build -t <your username>/node-web-app .
```
#### Run Image
```
$ docker run -p 80:3000 -d <your username>/node-web-app

#### Delete All containers & images
```
# Delete every Docker containers
# Must be run first because images are attached to containers
docker rm $(docker ps -a -q)

# Delete every Docker image
docker rmi $(docker images -q)
```
