class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string 		   :image
      t.integer 	   :clearance
      t.integer      :comment_count
      t.integer      :like_count
      t.integer      :price
      t.belongs_to   :folder
      t.references   :photo_owner, polymorphic: true, index: true 
      t.timestamps null: false
    end
    add_index :photos, :folder_id
  end
end
