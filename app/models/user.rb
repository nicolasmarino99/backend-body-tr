class User < ApplicationRecord
# model association
  has_many :progess_items
  has_many :categorys

  # validation
  validates_presence_of :name, :password, :email, :weight, :height
end
