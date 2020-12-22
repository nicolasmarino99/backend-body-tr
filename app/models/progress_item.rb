class ProgressItem < ApplicationRecord
  belongs_to :task
  belongs_to :category
  validates_presence_of :metric, :amount
end
