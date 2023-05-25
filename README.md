# API and Postman 5/25/23 Charlie

## Set up 
cd Desktop
10667  rails new rails_api_instructors -d postgreql -T
10668  rails new rails_api_instructors -d postgresql -T
10669  cd rails_api_instructors
10670  rails db:create
10671  git remote add origin https://github.com/learn-academy-2023-charlie/wildlife-tracker-SunkissedQueen.git
10672  git checkout -b main
10673  git status
10674  git commit -m "initial commit"
10675  git add .
10676  git commit -m "initial commit"
10677  git push origin main
10678  code .
$ bundle add rspec-rails
$ rails generate rspec:install
$ rails s

## API 
- Application Programming Interface: allows applications to communicate with each other
  : transmits data in the form of JSON(JavaScript Object Notation)
  : API will request data from a different application and its endpoint will respond back with the appropriate data.

## Postman
- data visualization tool

## Create API (model + controller)
- Generate resource with appropriate columns and datatypes:
$ `rails g resource RuffleFeather name:string type:string origin:string`
- resource automatically generates a model, controller, and routes
- $ rails db:migrate
- Add entries: $ rails c
> RuffleFeather.create(name: 'Foghorn Leghorn', type: 'rooster', origin: 'Looney Tunes')
