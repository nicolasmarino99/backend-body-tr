# frozen_string_literal: true

class ProgressItem < ApplicationRecord
  belongs_to :task

  serialize :progress, Array
end
