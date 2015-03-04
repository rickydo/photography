class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text 		:content
      t.belongs_to	:user
      t.belongs_to  :admin
      t.references 	:response, polymorphic: true, index: true
      t.timestamps null: false
    end
    add_index :comments, :user_id
    add_index :comments, :admin_id
  end
end
