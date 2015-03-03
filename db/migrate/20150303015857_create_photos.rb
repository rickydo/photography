class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string 		   :image
      t.integer 	   :clearance
      t.belongs_to 	 :user
      t.integer		   :comment_count
      t.integer		   :like_count
      t.integer		   :price
      t.timestamps null: false
    end
    add_index :photos, :user_id
  end
end
