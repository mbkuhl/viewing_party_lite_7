# Viewing Party

This is the base repo for the [Viewing Party Lite project](https://backend.turing.edu/module3/projects/viewing_party_lite) used for Turing's Backend Module 3.

### About this Project

Viewing Party Lite is an application in which users can explore movie options and create a viewing party event for themselves and other users of the application.

### Context


### Learning Goals

- Consume JSON APIs that require authentication

- Display Information from External API's through a basic front end

- Use a facade and "Plain old ruby objects" to move logic out of controllers.

## Setup

1. Fork and Clone the repo
2. Install gem packages: `bundle install`
3. Insert your API key from [TMDB](https://developer.themoviedb.org/docs/getting-started):

    a. Open your credentials file using `EDITOR="code --wait" rails credentials:edit`

    b. Copy and paste your key using the format. Indentation is important

    ```sh
      tmdb:
        key: Bearer 
    ```


4. Setup the database: `rails db:create`
5. Perform databse migrations: `rails:db:migrate`
6. Run on local: `rails s`, then open localhost `http://localhost:3000/`


## Versions

- Ruby 3.2.2

- Rails 7.0.6

Example wireframes to follow are found [here](https://backend.turing.edu/module3/projects/viewing_party_lite/wireframes)
