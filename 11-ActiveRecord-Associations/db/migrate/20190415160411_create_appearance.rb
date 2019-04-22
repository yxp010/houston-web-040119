class CreateAppearance < ActiveRecord::Migration[5.2]
  def change
    create_table :appearances do |t|
      t.integer :episode_id
      t.integer :character_id
    end

  end
end
