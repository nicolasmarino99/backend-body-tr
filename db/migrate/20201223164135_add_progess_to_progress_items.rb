class AddProgessToProgressItems < ActiveRecord::Migration[6.0]
  def change
    add_column :progress_items, :progress, :text
  end
end
