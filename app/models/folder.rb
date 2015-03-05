class Folder < ActiveRecord::Base
	belongs_to 	:folder_owner, polymorphic: true
	has_many 	:photos
end
