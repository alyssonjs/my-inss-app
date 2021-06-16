# My INSS

Basic aplication for enterprises to control collaborators INSS

## Docker:
to inicialize docker just fallow the steps:
if you have any permissions issue, just run the following commands with "sudo";

- docker-compose build 
- docker-compose run web yarn install --check-files
- docker-compose run web rake db:create
- docker-compose run web rake db:migrate
- docker-compose run web rake db:seed
- docker-compose up

and the server is on!

you can access it on localhost:3000
## Using:

- Ruby version 2.7.5 with Rails 5.2.6
- PostgreSQL
- JavaScript
- Bootstrap

## Main Features

- The user of the application will be able to register a new account or enter an account already existing using email and password.

- The authenticated user can register collaborator.

- INSS's collaborator will be automactly calculated based on wage


## Other Features:

- Docker / Docker Compose config.


- TDD with Rspec using Faker, FactoryBot, Shoulda Matchers end DatabaseCleaner for:
    - Models
    - Rounting
    
- CI configuration
