class CreateTest < ActiveRecord::Migration[5.2]
  def change
    create_table :puppies do |t|
      t.string :something
    end
  end
end
