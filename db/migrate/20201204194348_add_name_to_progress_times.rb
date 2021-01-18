# frozen_string_literal: true

class AddNameToProgressTimes < ActiveRecord::Migration[6.0]
  def change
    add_column :progress_items, :name, :string
  end
end
