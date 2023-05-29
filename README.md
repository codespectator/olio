# README

## Requirements

1. Docker

To get up and running with this project it is required that you have Docker
installed. For local use and easy installation check out [docker desktop](https://www.docker.com/products/docker-desktop/).

2. Ruby

We are using the latest release at time of writing (3.2.2) this can be installed
using your favourite version manager of choice (asdf, rbenv etc)

## Quick start

1. Close this repository to your local machine:

```
$ git clone git@github.com:codespectator/olio.git
```

2. Start the database using `docker compose`.

```
$ docker compose up -d
```

3. Install required gems and setup database

```
$ cd olio
$ bundle install
$ bin/rails db:setup
```

4. Run the application

```
$ foreman start -f Procfile.dev
```

Now you can access the running application at [http://localhost:3000](http://localhost:3000)
