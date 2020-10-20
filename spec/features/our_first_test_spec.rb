require 'rails_helper'

RSpec.feature "OurFirstTests", type: :feature, js: true do
  scenario "Our first passing capybara test" do
    expect(true).to be(true)
  end
end