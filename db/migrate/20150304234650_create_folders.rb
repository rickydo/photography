class CreateFolders < ActiveRecord::Migration
  def change
    create_table :folders do |t|
      t.string			:name
      t.references		:folder_owner, polymorphic: true, index: true
      t.timestamps null: false
    end

    add_index :folders, :photo_id
  end
end
