require 'rails_helper'

RSpec.describe Product, type: :model do
  before(:each) do
    @a_category = Category.new(name: 'cars')
    @a_product = Product.new(name: 'Tesla', price_cents: 65000, quantity: 244, category: @a_category)
  end
  describe 'Validations' do
    it "validates that product is valid" do
      expect(@a_product).to be_valid
    end
    it "validates that product name is required" do
      @a_product.name = nil
      expect(@a_product).to_not be_valid
      expect(@a_product.errors.full_messages).to eq ["Name can't be blank"]
    end
    it "validates that product price is required" do
      @a_product.price_cents = nil
      expect(@a_product).to_not be_valid
      expect(@a_product.errors.full_messages[2]).to eq "Price can't be blank"
    end
    it "validates that product quantity is required" do
      @a_product.quantity = nil
      expect(@a_product).to_not be_valid
      expect(@a_product.errors.full_messages).to eq ["Quantity can't be blank"]
    end
    it "validates that product category is required" do
      @a_product.category = nil
      expect(@a_product).to_not be_valid
      expect(@a_product.errors.full_messages).to eq ["Category can't be blank"]
    end
  end
end
