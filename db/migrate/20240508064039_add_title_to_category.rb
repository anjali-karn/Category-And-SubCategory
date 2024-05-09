class AddTitleToCategory < ActiveRecord::Migration[7.1]
  def change
    add_column :categories, :title, :string
  end
end
