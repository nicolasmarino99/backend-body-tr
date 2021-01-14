# frozen_string_literal: true

class AddDescriptionToProgressItems < ActiveRecord::Migration[6.0]
  def change
    add_column :progress_items, :description, :string
  end
end
