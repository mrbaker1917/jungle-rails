require 'rails_helper'

RSpec.feature "AddProducts", type: :feature, js: true do
  
  before :each do
    # setup
    @category = Category.create! name: 'Apparel'
    @category.products.create!(
      name: 'Women\'s Zebra pants',
      description: Faker::Hipster.paragraph(4),
      image: '',
      price: 50.50,
      quantity: 5
    )
  end

  scenario "A user can add a product to their cart when not logged in" do
    # visit the home page
    visit '/'
    # find a product listing
    first('article.product').find_button('Add').click
    find_link('My Cart (1)').click
    expect(page).to have_content('TOTAL:')
    expect(page).to have_content('Women\'s Zebra pants')
    page.save_screenshot


  end

  
  


end

# check if nav/cart has item in cart
# click cart link
# check item exists in cart