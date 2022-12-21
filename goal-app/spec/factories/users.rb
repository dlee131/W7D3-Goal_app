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
FactoryBot.define do
  factory :user do
    username { Faker::Games::Valorant.character}
    password { 'password' }

    factory :valorant do
      username { "Valorant" }
    end
  end
end
