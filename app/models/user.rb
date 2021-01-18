# frozen_string_literal: true

class User < ApplicationRecord
  # model association
  has_many :progess_items, dependent: :destroy
  has_many :categories, dependent: :destroy
  has_many :tasks, dependent: :destroy

  has_secure_password

  # validation
  validates :name, uniqueness: true
  validates :name, length: { minimum: 1 }
  validates_presence_of :name, :password, :password_confirmation, :email
end
