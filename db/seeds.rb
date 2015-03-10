admin = Admin.create!(first_name: "ricky", last_name: "do", email: "mail@mail.com", password: "p@ssw0rd123A", password_confirmation: "p@ssw0rd123A")

user1 = User.create!(first_name: "asap", last_name: "rocky", email: "mail1@mail.com", clearance: 1, password:"p@ssw0rd123A", password_confirmation: "p@ssw0rd123A")
user2 = User.create!(first_name: "rhinestone", last_name: "cowbody", email: "mail2@mail.com", clearance: 2, password:"p@ssw0rd123A", password_confirmation: "p@ssw0rd123A")

# blogs
blog1 = Blog.create!(admin_id: admin.id, title: "Blog 1" content: "this is my first blog about photos", clearance: 0, comment_count: 0, like_count: 0)
blog2 = Blog.create!(admin_id: admin.id, title: "Blog 2" content: "this is my second blog about photos", clearance: 0, comment_count: 0, like_count: 0)
blog3 = Blog.create!(admin_id: admin.id, title: "Blog 3" content: "this is my third blog about photos", clearance: 1, comment_count: 0, like_count: 0)
blog4 = Blog.create!(admin_id: admin.id, title: "Blog 4" content: "this is my fourth blog about photos", clearance: 1, comment_count: 0, like_count: 0)
blog5 = Blog.create!(admin_id: admin.id, title: "Blog 5" content: "this is my 5th blog about photos", clearance: 2, comment_count: 0, like_count: 0)
blog6 = Blog.create!(admin_id: admin.id, title: "Blog 6" content: "this is my sixth blog about photos", clearance: 2, comment_count: 0, like_count: 0)
blog7 = Blog.create!(admin_id: admin.id, title: "Blog 7" content: "this is my 7th blog about photos", clearance: 2, comment_count: 0, like_count: 0)
blog8 = Blog.create!(admin_id: admin.id, title: "Blog 8" content: "this is my 8th blog about photos", clearance: 3, comment_count: 0, like_count: 0)

# photos
image1 = Photo.create!(photo_owner_id: admin.id, image: "image_url", clearance: 1, comment_count: 0, like_count: 0, price: 0)
image2 = Photo.create!(photo_owner_id: admin.id, image: "image_url", clearance: 1, comment_count: 0, like_count: 0, price: 0)
image3 = Photo.create!(photo_owner_id: admin.id, image: "image_url", clearance: 1, comment_count: 0, like_count: 0, price: 0)
image4 = Photo.create!(photo_owner_id: admin.id, image: "image_url", clearance: 2, comment_count: 0, like_count: 0, price: 0)
image5 = Photo.create!(photo_owner_id: admin.id, image: "image_url", clearance: 2, comment_count: 0, like_count: 0, price: 0)

# likes
# like1 = Like.create!(user_id: user1.id, favorite_id: blog1.id)
# like2 = Like.create!(user_id: user2.id, favorite_id: blog1.id)
# like3 = Like.create!(user_id: user2.id, favorite_id: blog3.id)

# comments


# nonwatermarkedphotos
photo3 = NonWatermarkedPhoto.create!(image: "original photo image1", photo_id: image1)
photo1 = NonWatermarkedPhoto.create!(image: "original photo image3", photo_id: image3)
photo2 = NonWatermarkedPhoto.create!(image: "original photo image4", photo_id: image4)

# categories
cat_names = ["Professional Portraits", "All Things Bridal", "Life's Milestones", "My Hobby", "Beauty", "Family"]
cat_names.each do |name|
	Category.create!(name: name)
end



