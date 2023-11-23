# PicPost - Blogging Application

PicPost is a simple and intuitive blogging application built with Rails 7, leveraging Docker for containerization, Turbo Streams for frontend updates, and MySQL as the database.

## Table of Contents

- [Technology Stack](#technology-stack)
- [Setup without Docker](#setup-without-docker)
- [Setup with Docker](#setup-with-docker)

## Technology Stack

- **Rails 7**: Backend framework for web development.
- **Docker**: Containerization for development environment.
- **StimulusJS**: Handles frontend interactions.
- **Turbo Streams**: Provides seamless DOM updates.
- **MySQL**: Database management system.


### Prerequisites

- docker
- yarn
Make sure you have Docker and Yarn installed on your machine.

## Setup with Docker
1. Clone the repository:

   ```bash
   git clone https://github.com/your_username/picpost.git

2. cd picpost 

3. bundle install

4. yarn build

5. rails db:setup

7. rails s


## Setup with Docker
1. Clone the repository:

   ```bash
   git clone https://github.com/your_username/picpost.git

2. cd picpost 

3. bundle install

4. yarn build

5.  docker-compose up --build
