class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :favorite, polymorphic: true, index: true
      t.references :like_owner, polymorphic: true, index: true
      t.timestamps null: false
    end
  end
end
