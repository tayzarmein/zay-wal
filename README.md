![Tests](https://github.com/tayzarmein/zay-wal/workflows/Tests/badge.svg?branch=master&event=push)

## Instructions

### Requirements

- Docker and docker-compose
- Nodejs and npm

### Initial Setup

- Clone the repository.
- Change to ./api-server and run 
  `docker run -it -v $PWD:/app --rm --user $(id -u):$(id -g) 
  composer install`
- Change to ./web and run `npm install`

### For Frontend

- Change to ./web and run `npm start`

### For Backend

- Change to ./api-server and run `./vendor/bin/sail up`

### Tests

Tests will be performed automatically when you push code to master branch.

To Run Tests locally. 

- Change to ./api-server directory.
- Maker sure sail containers are runnning.
- run `./vendor/bin/sail test`