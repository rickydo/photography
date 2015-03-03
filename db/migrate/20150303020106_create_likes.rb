class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :favorite_id
      t.string :favorite_type

      t.timestamps null: false
    end
  end
end
