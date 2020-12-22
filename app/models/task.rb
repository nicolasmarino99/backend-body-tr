class Task < ApplicationRecord
  belongs_to :category
  has_many :progess_item, dependent: :destroy

  validates_presence_of :name
end
