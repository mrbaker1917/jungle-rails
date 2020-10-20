require 'rails_helper'

RSpec.feature "OurFirstTests", type: :feature, js: true do
  scenario "Our first passing capybara test" do
    expect(true).to be(true)
  end
end


# visit the home page
# find a product
# click add button on product listing
# check if nav/cart has item in cart
# click cart link
# check item exists in cart