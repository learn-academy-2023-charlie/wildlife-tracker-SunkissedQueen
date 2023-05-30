# API and Postman 5/25/23 Charlie

## Set up 
- $ `cd Desktop`
- $ `rails new rails_api_instructors -d postgresql -T`
- $ `cd rails_api_instructors`
- $ `rails db:create`
- $ `bundle add rspec-rails`
- $ `rails generate rspec:install`
- $ `rails s`
- $ `git remote add origin https://github.com/learn-academy-2023-charlie/wildlife-tracker-SunkissedQueen.git`
- $ `git checkout -b main`
- $ `git status`
- $ `git add .`
- $ `git commit -m "initial commit"`
- $ `git push origin main`
- $ `code .`

## Create API (model + controller)
### API 
  - Application Programming Interface: allows applications to communicate with each other  
    : transmits data in the form of JSON(JavaScript Object Notation)  
    : API will receive a request from a different application, and the API endpoint will respond back with the appropriate data.
- Generate resource with appropriate columns and datatypes:
  $ `rails g resource RuffleFeather name:string type:string origin:string`
  - resource automatically generates a model, controller, and routes
- $ `rails db:migrate`
- Add entries: $ `rails c`
  > RuffleFeather.create(name: 'Foghorn Leghorn', type: 'rooster', origin: 'Looney Tunes')
- Disable the authenticity token
```rb
  class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token
  end
```

## Work Flow
Since the purpose of new and edit are to display forms, we will not make requests for those in Postman
  ### edit
    - to display an html form to update an existing instance
  ### new
    - to display an html form to create a new instance
### API endpoints
To make requests on the other API endpoints that interacts with the data:
- create a branch for each API endpoint
- create a controller method for that endpoint
- To see the avaiable routes: $ `rails routes -E`
### Postman
- Postman: data visualization tool used to make request to the API and check that the API endpoint will produce a successful response  
***NOTE: You don't have to make an account to use Postman.***
- Status: 200 OK means it was a successful request/response
- Status: 404 Not found
  - Response will look like an html file in the body
  - Select Preview to see how the error message would look in the browser

## index
  - to display all the instances
- define an index method 
```rb
  def index
    @feathers = RuffleFeather.all
    render json: @feathers
  end
```
- Go to Postman
  - http verb -> url -> Send
  - Body -> Pretty -> JSON

## show
  - to display one instance
- define a show method
- Go to Postman
  - http verb -> url -> Send
  - Body -> Pretty -> JSON

## create
  - to save the instance created from the user input on the new form
- define a create method
- Go to Postman
  - http verb -> url -> Send
  - Row below the request: Body -> raw -> JSON
  - Provide an object with the required attributes
```json
  {
      "name": "Miss Prissy",
      "species": "hen",
      "origin": "Looney Tunes"
  }
```
  - Body -> Pretty -> JSON

## update
- to save the instance modified from the user input on the edit form
- define a update method
- Go to Postman
  - http verb -> url -> Send
  - Row below the request: Body -> raw -> JSON
  - Provide an object with the required attributes
```json
  {
    "species": "happy hen"
  }
```
  - Body -> Pretty -> JSON

## destroy
  - to delete an existing instance
- define a destroy method
- Go to Postman
  - http verb -> url -> Send
  - Row below the request: Body -> raw -> JSON
  - Provide an object with the required attributes
```json
  {
    "species": "happy hen"
  }
```
  - Body -> Pretty -> JSON