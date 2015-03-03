class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :response_id
      t.string :response_type

      t.timestamps null: false
    end
  end
end
