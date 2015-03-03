class CreateNonWatermarkedPhotos < ActiveRecord::Migration
  def change
    create_table :non_watermarked_photos do |t|
      t.string 		:image
      t.belongs_to 	:photo
      t.timestamps null: false
    end
    add_index :non_watermarked_photos, :photo_id
  end
end
