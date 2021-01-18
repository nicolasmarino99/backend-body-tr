# frozen_string_literal: true

require 'rails_helper'
RSpec.describe User, type: :model do
  it { should have_many(:categories).dependent(:destroy) }
  it { should have_many(:tasks).dependent(:destroy) }
  it { should have_many(:progess_items).dependent(:destroy) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:password) }
  it { should validate_presence_of(:password_confirmation) }
  it { should validate_presence_of(:email) }
end
