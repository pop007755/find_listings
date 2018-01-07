# FindLisitngs

## Basic Instruction
1. Read listings from listings.yml
2. Use remote link for ajax request
3. Dynamically render listings partial and replace the old listings
4. Add three filters to select listings

## Installation and Setup

#### Install Docker (stable build) for mac

  https://docs.docker.com/docker-for-mac/install/#download-docker-for-mac

#### Open Docker

    open docker with privilege access

#### Build the environment and install dependencies

    docker-compose build

#### Start all services include rails server

    docker-compose up     # Starts all services in the foreground (preferred)

#### Setting up and seeding your development DB
This will run the following commands: `rails db:drop` `rails db:create` `rails db:seed`
		open a new termial, cd to same route and run:
    dcs/db-reset

 Once the `dcs/db-reset` script has finished, navigate to `localhost:3000` to view the rails app.

#### (Optional)Running migrations
    dcs/db-migrate

#### (Optional)Running any rails command inside the docker container
    dcs/rails [...args]

    # Example
    dcs/rails console


