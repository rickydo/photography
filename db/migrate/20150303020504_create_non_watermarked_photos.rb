class CreateNonWatermarkedPhotos < ActiveRecord::Migration
  def change
    create_table :non_watermarked_photos do |t|
      t.string 		:image
      t.belongs_to 	:photo, index: true
      t.belongs_to  :user, index: true
      t.timestamps null: false
    end
  end
end
