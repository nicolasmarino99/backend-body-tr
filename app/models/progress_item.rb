class ProgressItem < ApplicationRecord
  belongs_to :task
  validates_presence_of :metric, :amount
end
