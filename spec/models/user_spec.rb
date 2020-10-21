require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @a_user = User.create!(first_name: "Mark", last_name: "Baker", email: 'mrbaker1917@gmail.com', password: "1234abcd", password_confirmation: "1234abcd")
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
      password = "1234abc"
      password_confirmation = @a_user.password_confirmation
      expect(password).to_not match(password_confirmation)
    end
    it "validates that email addresses must be unique" do
      expect {User.create!(first_name: "Mark", last_name: "Baker", email: 'mrbaker1917@gmail.com', password: "1234abcd", password_confirmation: "1234abcd")}.to raise_exception(ActiveRecord::RecordInvalid, "Validation failed: Email has already been taken")
    end
  end
  it "validates that password has minimum of 4 characters" do
    @a_user.password = "b1p"
    expect(@a_user).to_not be_valid
  end
  describe '.authenticate_with_credentials' do
    it 'returns nil if password is incorrect' do
      foundUser = User.authenticate_with_credentials(@a_user.email, "B1p2m3td")
      expect(foundUser).to be_nil
    end
    it 'returns nil if email is incorrect' do
      foundUser = User.authenticate_with_credentials("msbaker1917@gmail.com", @a_user.password)
      expect(foundUser).to be_nil
    end
    it 'returns user object if email is wrong case' do
      foundUser = User.authenticate_with_credentials("MrbaKer1917@gmail.com", @a_user.password)
      expect(foundUser.email).to eql(@a_user.email)
    end
    it 'returns user object if email contains whitespace' do
      foundUser = User.authenticate_with_credentials("     mrbaker1917@gmail.com   ", @a_user.password)
      expect(foundUser.email).to eql(@a_user.email)
    end
  end
end
