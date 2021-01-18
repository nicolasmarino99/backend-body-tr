# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :email
      t.float :weight
      t.float :height

      t.timestamps
    end
  end
end
