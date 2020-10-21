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
* Rspec-Rails 3.5
* sass-rails 5.0
* uglifier 1.3.0
* jquery-rails
* turbolinks
* jbuilder 2.0
* sdoc
* bcrypt 3.1.7
* puma
* bootstrap-sass 3.36
* font-awesome-rails
* money-rails
* carrierwave
* rmagick
* faker
* byebug
* quiet-assets
* dotenv-rails
* capybara
* poltergeist
* database_cleaner
* web-console 2.0
* spring
* newrelic_rpm
* rails_12factor

## Screenshots

!["Logged out home"](https://github.com/mrbaker1917/jungle-rails/blob/master/docs/jungle_logged_out_home.png)
!["Logged in user"](https://github.com/mrbaker1917/jungle-rails/blob/master/docs/jungle_logged_in_user.png)
!["Products by category"](https://github.com/mrbaker1917/jungle-rails/blob/master/docs/jungle_prods_by_category.png)
!["Cart view"](https://github.com/mrbaker1917/jungle-rails/blob/master/docs/jungle_cart.png)
!["Completed order"](https://github.com/mrbaker1917/jungle-rails/blob/master/docs/jungle_completed_order.png)
!["Admin categories"](https://github.com/mrbaker1917/jungle-rails/blob/master/docs/jungle_admin_categories.png)
!["Admin products"](https://github.com/mrbaker1917/jungle-rails/blob/master/docs/jungle_admin_products.png)
