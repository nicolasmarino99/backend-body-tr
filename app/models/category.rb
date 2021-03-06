# frozen_string_literal: true

class Category < ApplicationRecord
  belongs_to :user
  has_many :tasks, dependent: :destroy

  validates_presence_of :name
end
