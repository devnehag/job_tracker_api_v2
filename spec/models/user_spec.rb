require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with valid attributes" do
    user = User.new(username: 'testuser', email: 'test@example.com', password: 'password', password_confirmation: 'password')
    expect(user).to be_valid
  end

  it "is not valid without a username" do
    user = User.new(username: nil)
    expect(user).to_not be_valid
  end

  it "is not valid without an email" do
    user = User.new(email: nil)
    expect(user).to_not be_valid
  end

  it "is not valid with a duplicate email" do
    User.create(username: 'testuser1', email: 'test@example.com', password: 'password', password_confirmation: 'password')
    user = User.new(username: 'testuser2', email: 'test@example.com', password: 'password', password_confirmation: 'password')
    expect(user).to_not be_valid
  end
end