class AddColumnToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :year, :integer
  end
end
