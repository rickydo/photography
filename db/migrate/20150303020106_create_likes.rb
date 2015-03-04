class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :favorite, polymorphic: true, index: true
      t.belongs_to :user_id
      t.belongs_to :admin_id
      t.timestamps null: false
    end
    add_index :likes, :user_id
    add_index :likes, :admin_id
  end
end
