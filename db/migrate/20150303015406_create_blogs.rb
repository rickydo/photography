class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.belongs_to 	 :admin
      t.string       :title
      t.text 		     :content
      t.integer 		 :clearance
      t.integer		   :comment_count
      t.integer		   :like_count
      t.timestamps null: false
    end
    add_index :blogs, :admin_id
  end
end
