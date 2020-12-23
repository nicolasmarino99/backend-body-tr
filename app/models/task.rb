class Task < ApplicationRecord
  belongs_to :category
  has_many :progress_items, dependent: :destroy

  validates_presence_of :name
end
