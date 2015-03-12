admin = Admin.create!(first_name: "ricky", last_name: "do", email: "mail@mail.com", password: "p@ssw0rd123A", password_confirmation: "p@ssw0rd123A")

user1 = User.create!(first_name: "asap", last_name: "rocky", email: "mail1@mail.com", clearance: 1, password:"p@ssw0rd123A", password_confirmation: "p@ssw0rd123A")
user2 = User.create!(first_name: "rhinestone", last_name: "cowbody", email: "mail2@mail.com", clearance: 2, password:"p@ssw0rd123A", password_confirmation: "p@ssw0rd123A")

######### blogs ########### 
blog1 = Blog.create!(admin_id: admin.id, title: "Blog 1" content: "this is my first blog about photos", clearance: 0, comment_count: 0, like_count: 0)
blog2 = Blog.create!(admin_id: admin.id, title: "Blog 2" content: "this is my second blog about photos", clearance: 0, comment_count: 0, like_count: 0)
blog3 = Blog.create!(admin_id: admin.id, title: "Blog 3" content: "this is my third blog about photos", clearance: 1, comment_count: 0, like_count: 0)
blog4 = Blog.create!(admin_id: admin.id, title: "Blog 4" content: "this is my fourth blog about photos", clearance: 1, comment_count: 0, like_count: 0)
blog5 = Blog.create!(admin_id: admin.id, title: "Blog 5" content: "this is my 5th blog about photos", clearance: 2, comment_count: 0, like_count: 0)
blog6 = Blog.create!(admin_id: admin.id, title: "Blog 6" content: "this is my sixth blog about photos", clearance: 2, comment_count: 0, like_count: 0)
blog7 = Blog.create!(admin_id: admin.id, title: "Blog 7" content: "this is my 7th blog about photos", clearance: 2, comment_count: 0, like_count: 0)
blog8 = Blog.create!(admin_id: admin.id, title: "Blog 8" content: "this is my 8th blog about photos", clearance: 3, comment_count: 0, like_count: 0)

######### categories ###########
cat_names = ["Professional Portraits", "All Things Bridal", "Life's Milestones", "My Hobby", "Beauty", "Family"]
cat_names.each do |name|
	Category.create!(name: name)
end

######### photos for all users/non-users ###########
a_photos = admin.photos

image1 = Photo.create!(image: "image_url", clearance: 0, comment_count: 0, like_count: 0, price: 0, category_id: 1)
image2 = Photo.create!(image: "image_url", clearance: 0, comment_count: 0, like_count: 0, price: 0, category_id: 1)

image3 = Photo.create!(image: "image_url", clearance: 0, comment_count: 0, like_count: 0, price: 0, category_id: 2)
image4 = Photo.create!(image: "image_url", clearance: 0, comment_count: 0, like_count: 0, price: 0, category_id: 2)

image5 = Photo.create!(image: "image_url", clearance: 0, comment_count: 0, like_count: 0, price: 0, category_id: 3)
image6 = Photo.create!(image: "image_url", clearance: 0, comment_count: 0, like_count: 0, price: 0, category_id: 3)

image7 = Photo.create!(image: "image_url", clearance: 0, comment_count: 0, like_count: 0, price: 0, category_id: 4)
image8 = Photo.create!(image: "image_url", clearance: 0, comment_count: 0, like_count: 0, price: 0, category_id: 4)

image9 = Photo.create!(image: "image_url", clearance: 0, comment_count: 0, like_count: 0, price: 0, category_id: 5)
image10 = Photo.create!(image: "image_url", clearance: 0, comment_count: 0, like_count: 0, price: 0, category_id: 5)

image11 = Photo.create!(image: "image_url", clearance: 0, comment_count: 0, like_count: 0, price: 0, category_id: 6)
image12 = Photo.create!(image: "image_url", clearance: 0, comment_count: 0, like_count: 0, price: 0, category_id: 6)

common_images = [image1, image2, image3, image4, image5, image6, image7, image8, image9, image10, image11, image12]
common_images.each do |image|
	a_photos << image
end

######### photos requiring clearance levels ###########
c_image1 = Photo.create(image: "image_url", clearance: 1, comment_count: 0, like_count: 0, price: 0, category_id: 1)
c_image2 = Photo.create(image: "image_url", clearance: 1, comment_count: 0, like_count: 0, price: 0, category_id: 1)

c_image3 = Photo.create(image: "image_url", clearance: 1, comment_count: 0, like_count: 0, price: 0, category_id: 2)
c_image4 = Photo.create(image: "image_url", clearance: 1, comment_count: 0, like_count: 0, price: 0, category_id: 2)

c_image5 = Photo.create(image: "image_url", clearance: 1, comment_count: 0, like_count: 0, price: 0, category_id: 3)
c_image6 = Photo.create(image: "image_url", clearance: 1, comment_count: 0, like_count: 0, price: 0, category_id: 3)

c_image7 = Photo.create(image: "image_url", clearance: 1, comment_count: 0, like_count: 0, price: 0, category_id: 4)
c_image8 = Photo.create(image: "image_url", clearance: 1, comment_count: 0, like_count: 0, price: 0, category_id: 4)

c_image9 = Photo.create(image: "image_url", clearance: 1, comment_count: 0, like_count: 0, price: 0, category_id: 5)
c_image10 = Photo.create(image: "image_url", clearance: 1, comment_count: 0, like_count: 0, price: 0, category_id: 5)

c_image11 = Photo.create(image: "image_url", clearance: 1, comment_count: 0, like_count: 0, price: 0, category_id: 6)
c_image12 = Photo.create(image: "image_url", clearance: 1, comment_count: 0, like_count: 0, price: 0, category_id: 6)

c_image13 = Photo.create(image: "image_url", clearance: 2, comment_count: 0, like_count: 0, price: 0, category_id: 1)
c_image14 = Photo.create(image: "image_url", clearance: 2, comment_count: 0, like_count: 0, price: 0, category_id: 1)

c_image15 = Photo.create(image: "image_url", clearance: 2, comment_count: 0, like_count: 0, price: 0, category_id: 2)
c_image16 = Photo.create(image: "image_url", clearance: 2, comment_count: 0, like_count: 0, price: 0, category_id: 2)

c_image17 = Photo.create(image: "image_url", clearance: 2, comment_count: 0, like_count: 0, price: 0, category_id: 3)
c_image18 = Photo.create(image: "image_url", clearance: 2, comment_count: 0, like_count: 0, price: 0, category_id: 3)

c_image19 = Photo.create(image: "image_url", clearance: 2, comment_count: 0, like_count: 0, price: 0, category_id: 4)
c_image20 = Photo.create(image: "image_url", clearance: 2, comment_count: 0, like_count: 0, price: 0, category_id: 4)

c_image21 = Photo.create(image: "image_url", clearance: 2, comment_count: 0, like_count: 0, price: 0, category_id: 5)
c_image22 = Photo.create(image: "image_url", clearance: 2, comment_count: 0, like_count: 0, price: 0, category_id: 5)

c_image23 = Photo.create(image: "image_url", clearance: 2, comment_count: 0, like_count: 0, price: 0, category_id: 6)
c_image24 = Photo.create(image: "image_url", clearance: 2, comment_count: 0, like_count: 0, price: 0, category_id: 6)

######### photos specific to user ###########
u1_photos = user1.photos
u1_image1 = Photo.create(image: "image_url", comment_count: 0, like_count: 0, price: 2.99)
u1_image2 = Photo.create(image: "image_url", comment_count: 0, like_count: 0, price: 2.99)
u1_image3 = Photo.create(image: "image_url", comment_count: 0, like_count: 0, price: 2.99)

user1_images = [u1_image1, u1_image2, u1_image3]

user1_images.each do |image|
	u1_photos << image 
end 

u2_photos = user2.photos
u2_image1 = Photo.create(image: "image_url", comment_count: 0, like_count: 0, price: 2.99)
u2_image2 = Photo.create(image: "image_url", comment_count: 0, like_count: 0, price: 2.99)
u2_image3 = Photo.create(image: "image_url", comment_count: 0, like_count: 0, price: 2.99)

user2_images = [u2_image1, u2_image2, u2_image3]

user2_images.each do |image|
	u2_photos << image 
end 

######### nonwatermarkedphotos ###########
# user 1 
photo1 = NonWatermarkedPhoto.create!(image: "original photo image3", photo_id: u1_image1.id)
photo2 = NonWatermarkedPhoto.create!(image: "original photo image4", photo_id: u1_image2.id)
photo3 = NonWatermarkedPhoto.create!(image: "original photo image1", photo_id: u1_image3.id)

# user2
photo4 = NonWatermarkedPhoto.create!(image: "original photo image3", photo_id: u2_image1.id)
photo5 = NonWatermarkedPhoto.create!(image: "original photo image4", photo_id: u2_image2.id)
photo6 = NonWatermarkedPhoto.create!(image: "original photo image1", photo_id: u2_image3.id)


# likes
# like1 = Like.create!(user_id: user1.id, favorite_id: blog1.id)
# like2 = Like.create!(user_id: user2.id, favorite_id: blog1.id)
# like3 = Like.create!(user_id: user2.id, favorite_id: blog3.id)

# comments



