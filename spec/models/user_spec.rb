RSpec.describe User, type: :model do
    # Association test
    # ensure Todo model has a 1:m relationship with the Item model
    it { should have_many(:categories).dependent(:destroy) }
    it { should have_many(:tasks).dependent(:destroy) }
    it { should have_many(:progess_items).dependent(:destroy) }
    # Validation tests
    # ensure columns title and created_by are present before saving
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:password) }
    it { should validate_presence_of(:password_confirmation) }
    it { should validate_presence_of(:email) }
  end