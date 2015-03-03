class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.integer :user_id
      t.text :content
      t.string :clearance

      t.timestamps null: false
    end
  end
end
