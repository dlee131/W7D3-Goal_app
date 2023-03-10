# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  username        :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string           not null
#  session_token   :string           not null
#
require 'rails_helper'

RSpec.describe User, type: :model do
    subject(:gerald) do
      User.create!(
        username: "gerald",
        password: "super_secret_password"
      )
    end

  it { should validate_presence_of(:username)  }

  it { should validate_presence_of(:password_digest)}

  it { should validate_length_of(:password).is_at_least(6)}


  # describe 'uniqueness' do
  #   before :each do
  #       create(:user)
  #   end
  #   it { should validate_uniqueness_of (:username)}
    # it { should validate_uniqueness_of ()}


  describe "is_password?" do
    let!(:user) { create(:user)}
  end
    context "with a valid password" do
      it "should return true" do
      expect(user.is_password?("password")).to be true 
      end
    end

    context "with an invalid password" do
      it "should return false" do
      expect(user.is_password?("swole")).to be false
      end
    end







end

