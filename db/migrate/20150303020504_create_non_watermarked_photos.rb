class CreateNonWatermarkedPhotos < ActiveRecord::Migration
  def change
    create_table :non_watermarked_photos do |t|
      t.string :image
      t.integer :photo_id

      t.timestamps null: false
    end
  end
end
