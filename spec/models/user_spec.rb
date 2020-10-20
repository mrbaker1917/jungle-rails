require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @a_user = User.create!(first_name: "Mark", last_name: "Baker", email: 'mrbaker1917@gmail.com', password: "B1p2m3td$", password_confirmation: "B1p2m3td$")
  end
  describe 'Validations' do
    it "validates that user is valid" do
      expect(@a_user).to be_valid
    end
    it "validates that first_name is required" do
      @a_user.first_name = nil
      expect(@a_user).to_not be_valid
    end
    it "validates that last_name is required" do
      @a_user.last_name = nil
      expect(@a_user).to_not be_valid
    end
    it "validates that email is required" do
      @a_user.email = nil
      expect(@a_user).to_not be_valid
    end
    it "validates that password is required" do
      @a_user.password = nil
      expect(@a_user).to_not be_valid
    end
    it "validates that password_confirmation is required" do
      @a_user.password_confirmation = nil
      expect(@a_user).to_not be_valid
    end
    it "validates that the password and password_confirmation match" do
      password = @a_user.password
      password_confirmation = @a_user.password_confirmation
      expect(password).to match(password_confirmation)
    end
    it "validates that the password and password_confirmation do not match" do
      password = @a_user.password
      password_confirmation = "b1p2m3td$"
      expect(password).to_not match(password_confirmation)
    end
    it "validates that email addresses must be unique" do
      expect {User.create!(first_name: "Mark", last_name: "Baker", email: 'mrbaker1917@gmail.com', password: "B1p2m3td$", password_confirmation: "B1p2m3td$")}.to raise_exception(ActiveRecord::RecordInvalid, "Validation failed: Email has already been taken")
    end
  end
  it "validates that password has minimum of 4 characters" do
    @a_user.password = "b1p"
    expect(@a_user).to_not be_valid
  end
end
