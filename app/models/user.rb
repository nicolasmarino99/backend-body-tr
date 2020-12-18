class User < ApplicationRecord
# model association
  has_many :progess_items
  has_many :categorys
  has_many :tasks

  has_secure_password

  # validation
  validates :name, uniqueness: true
  validates :name, length: { minimum: 4 }
  validates_presence_of :name, :password, :password_confirmation, :email, :weight, :height
end
