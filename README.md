# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example
with Lighthouse Labs Web Development BootCamp.
I added various features to the basic app: 
  * ability to register and login; admin authorization
  * for accessing products and categories, and adding to these; also added dashboard with basic facts.
  * Money formatting made uniform across site.
  * Number of items in cart updated in navbar.
  * "Add" button added to product details, which were also improved.
  * "Sold Out" flag added to products when quantity is zero.
  * 25 different tests using rspec for unit testing and capybara for feature/integration testing.



## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
* Rspec


