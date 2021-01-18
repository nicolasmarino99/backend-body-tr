# frozen_string_literal: true

class AddImageToCategorys < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :img, :string
  end
end
