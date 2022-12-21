require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:username)  }
  pending "add some examples to (or delete) #{__FILE__}"
end
