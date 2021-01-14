require 'rails_helper'

RSpec.describe User, type: :model do
    it { should belong_to(:user) }
    it { should have_many(:tasks).dependent(:destroy) }
    it { should validate_presence_of(:name) }
  end