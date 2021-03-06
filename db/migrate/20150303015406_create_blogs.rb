class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.belongs_to 	 :admin, index: true
      t.string       :title
      t.text 		     :content
      t.integer 		 :clearance
      t.integer		   :comment_count
      t.integer		   :like_count
      t.timestamps null: false
    end
  end
end
