# frozen_string_literal: true

class AddImageToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :img, :string
  end
end
