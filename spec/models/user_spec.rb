require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new(email: nil, password: nil) }

  it "is invalid without a email" do
    expect(user.valid?).to eq(false)
  end

  it "is invalid without a password" do
    expect(user.valid?).to eq(false)
  end

  let(:double_user) { User.new(email: "test@example.com", password: "test5678") }
  it "is invalid with a duplicate email address" do
    User.create(
      email:      "test@example.com",
      password:   "test1234"
    )

    double_user = User.new( 
      email:      "test@example.com",
      password:   "test5678"
    ) 

    double_user.valid?
    expect(double_user.valid?).to eq(false)
  end
end
