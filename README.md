# Recipes on Rails

> Recipe sharing app built with Ruby on Rails.

The Recipe app keeps track of all your recipes, ingredients, and inventory. It will allow you to save ingredients, keep track of what you have, create recipes, and generate a shopping list based on what you have and what you are missing from a recipe. Also, since sharing recipes is an important part of cooking the app should allow you to make them public so anyone can access them.

## Built With

- Ruby on Rails

## Live demo

[Live demo](https://infinite-ravine-17811.herokuapp.com/)

## Getting Started

### Prerequisites

- Ruby
- Postgres server

### Setup

Clone this repo and enter the directory.

```sh
git@github.com:franciscoPonceDev/recipe-app.git && cd recipe-app
```

### Install

Run the following command to install all the dependencies.

```sh
bundler install
```

### Usage

Run the following command to start the server, then go to http://localhost:3000

```sh
rails db:create # create database
rails db:migrate # migrate tables
rails db:seed # load all data in database from seed.rb

bin/dev # necessary to start the app for the first time
---- or ----
rails s # can be used after starting the app at least once
```

### Run tests

```sh
bundle exec rspec spec
```

## Author

👤 **Fabricio Garcia**

- Github: [@fabricio-garcia](https://github.com/fabricio-garcia)
- Twitter: [@fabgrel10](https://twitter.com/fabgrel10)
- Linkedin: [@fabricio-garcia](https://linkedin.com/fabricio-garcia)

👤 **Francisco Ponce**

- GitHub: [@franciscoPonceDev](https://github.com/franciscoPonceDev)
- Twitter: [@franciscoPonce](https://twitter.com/franciscoPonce)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/dev-ponce/)

👤 **Omar Ragheb**

- GitHub: [https://github.com/omar25ahmed](https://github.com/omar25ahmed)
- LinkedIn: [https://www.linkedin.com/in/omar-ragheb/](https://www.linkedin.com/in/omar-ragheb/)
- Twitter: [https://twitter.com/Omar25Ahmed](https://twitter.com/Omar25Ahmed)

## Show your support

Give a ⭐️ if you like this project!
