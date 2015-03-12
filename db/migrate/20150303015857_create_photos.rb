class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string 		   :image
      t.string       :marked_image
      t.integer      :clearance
      t.integer      :comment_count
      t.integer      :like_count
      t.integer      :price
      t.belongs_to   :folder, index: true
      t.belongs_to   :category, index: true
      t.belongs_to   :blog, index: true
      t.references   :photo_owner, polymorphic: true, index: true 
      t.timestamps null: false
    end
  end
end
