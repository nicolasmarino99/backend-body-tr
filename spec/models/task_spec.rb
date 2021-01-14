require 'rails_helper'
RSpec.describe User, type: :model do
    it { should belong_to(:category) }
    it { should have_many(:progess_items).dependent(:destroy) }
    it { should validate_presence_of(:name) }
  end