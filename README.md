![Tests](https://github.com/tayzarmein/zay-wal/workflows/Tests/badge.svg?branch=master&event=push)

## Instructions

### Initial Setup

- Clone the repository.
- Install docker and docker compose.
- Change to ./api-server and run    `docker run -it -v $PWD:/app --rm --user $(id -u):$(id -g) 
  composer install`
- Change to ./web and run `npm install`

### For Frontend

- Change to ./web and run `npm start`

### For Backend

- Change to ./api-server and run `./vendor/bin/sail up`
