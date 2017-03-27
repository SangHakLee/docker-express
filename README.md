# Simple Web Project

## Usage
```bash
$ node bin/www
#or
$ nodemon bin/www
```

## Docker

### Docker CMD

#### Build Image
```bash
$ docker build -t <your username>/node-web-app .
```

#### Run Image
```bash
$ docker run -p 80:3000 -d <your username>/node-web-app
```

#### Delete All containers & images
```bash
# Delete every Docker containers
# Must be run first because images are attached to containers
docker rm $(docker ps -a -q)

# Delete every Docker image
docker rmi $(docker images -q)
```
