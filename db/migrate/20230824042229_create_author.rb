class CreateAuthor < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :hometown
      t.boolean :currently_writing
      t.integer :total_awards

      t.timestamps
    end
  end
end
