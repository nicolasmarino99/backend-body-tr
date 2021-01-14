# frozen_string_literal: true

class CreateProgressItems < ActiveRecord::Migration[6.0]
  def change
    create_table :progress_items do |t|
      t.string :metric
      t.float :amount
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
