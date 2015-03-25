admin = Admin.create!(first_name: "ricky", last_name: "do", email: "mail@mail.com", password: "p@ssw0rd123A", password_confirmation: "p@ssw0rd123A")

user1 = User.create!(first_name: "asap", last_name: "rocky", email: "mail1@mail.com", clearance: 1, password:"p@ssw0rd123A", password_confirmation: "p@ssw0rd123A")
user2 = User.create!(first_name: "rhinestone", last_name: "cowbody", email: "mail2@mail.com", clearance: 2, password:"p@ssw0rd123A", password_confirmation: "p@ssw0rd123A")

######### blogs ########### 
blog1 = Blog.create!(admin_id: admin.id, title: "Blog 1", content: "this is my first blog about photos", clearance: 0, comment_count: 0, like_count: 0)
blog2 = Blog.create!(admin_id: admin.id, title: "Blog 2", content: "this is my second blog about photos", clearance: 0, comment_count: 0, like_count: 0)
blog3 = Blog.create!(admin_id: admin.id, title: "Blog 3", content: "this is my third blog about photos", clearance: 1, comment_count: 0, like_count: 0)
blog4 = Blog.create!(admin_id: admin.id, title: "Blog 4", content: "this is my fourth blog about photos", clearance: 1, comment_count: 0, like_count: 0)
blog5 = Blog.create!(admin_id: admin.id, title: "Blog 5", content: "this is my 5th blog about photos", clearance: 2, comment_count: 0, like_count: 0)
blog6 = Blog.create!(admin_id: admin.id, title: "Blog 6", content: "this is my sixth blog about photos", clearance: 2, comment_count: 0, like_count: 0)
blog7 = Blog.create!(admin_id: admin.id, title: "Blog 7", content: "this is my 7th blog about photos", clearance: 2, comment_count: 0, like_count: 0)
blog8 = Blog.create!(admin_id: admin.id, title: "Blog 8", content: "this is my 8th blog about photos", clearance: 3, comment_count: 0, like_count: 0)

######### categories ###########
# base_img_url = "/../app/assets/images/"
cat_names = ["Professional Portraits", "All Things Bridal", "Life's Milestones", "My Hobby", "Beauty", "Family"]
cat_thumbs = [	"portraits/beautiful-15767_640.jpg",
				"wedding/beach-625580_640.jpg",
				"milestones/engagement-637789_640.jpg",
				"hobby/dawn-190055_640.jpg",
				"beauty-pics/girl-487094_640.jpg",
				"family/picnic-644278_640.jpg"]
cat_with_thumb = cat_names.zip(cat_thumbs)
cat_with_thumb.each do |name, url|
	Category.create!(name: name, thumbnail: url)
end
Category.first.update(slug: "portraits")
Category.second.update(slug: "bridal")
Category.third.update(slug: "milestones")
Category.fourth.update(slug: "hobby")
Category.fifth.update(slug: "beauty")
Category.last.update(slug: "family")

######### photos for all users/non-users ###########
a_photos = admin.photos


image1 = Photo.create!(image: "portraits/beautiful-15767_640.jpg" ,marked_image: "portraits/beautiful-15767_1920_marked.jpg", clearance: 0, comment_count: 0, like_count: 0, price: 0, category_id: 1)
image2 = Photo.create!(image: "portraits/boy-432502_640.jpg" ,marked_image: "portraits/boy-432502_1920_marked.jpg", clearance: 0, comment_count: 0, like_count: 0, price: 0, category_id: 1)

image3 = Photo.create!(image: "wedding/beach-625580_640.jpg" ,marked_image: "wedding/beach-625580_1920_marked.jpg", clearance: 0, comment_count: 0, like_count: 0, price: 0, category_id: 2)
image4 = Photo.create!(image: "wedding/bride-454144_640.jpg" ,marked_image: "wedding/bride-454144_1920_marked.jpg", clearance: 0, comment_count: 0, like_count: 0, price: 0, category_id: 2)

image5 = Photo.create!(image: "milestones/love-497528_640.jpg" ,marked_image: "milestones/love-497528_1920_marked.jpg", clearance: 0, comment_count: 0, like_count: 0, price: 0, category_id: 3)
image6 = Photo.create!(image: "milestones/rock-island-123406_640.jpg" ,marked_image: "milestones/rock-island-123406_marked.jpg", clearance: 0, comment_count: 0, like_count: 0, price: 0, category_id: 3)

image7 = Photo.create!(image: "hobby/automobile-176989_640.jpg" ,marked_image: "hobby/automobile-176989_1920_marked.jpg", clearance: 0, comment_count: 0, like_count: 0, price: 0, category_id: 4)
image8 = Photo.create!(image: "hobby/coast-192979_640.jpg" ,marked_image: "hobby/coast-192979_marked.jpg", clearance: 0, comment_count: 0, like_count: 0, price: 0, category_id: 4)

image9 = Photo.create!(image: "beauty-pics/beauty-354572_640.jpg" ,marked_image: "beauty-pics/beauty-354572_1920_marked.jpg", clearance: 0, comment_count: 0, like_count: 0, price: 0, category_id: 5)
image10 = Photo.create!(image: "beauty-pics/fairy-tales-636649_640.jpg" ,marked_image: "beauty-pics/fairy-tales-636649_1920_marked.jpg", clearance: 0, comment_count: 0, like_count: 0, price: 0, category_id: 5)

image11 = Photo.create!(image: "family/baby-17342_640.jpg" ,marked_image: "family/baby-17342_1920_marked.jpg", clearance: 0, comment_count: 0, like_count: 0, price: 0, category_id: 6)
image12 = Photo.create!(image: "family/baby-17343_640.jpg" ,marked_image: "family/baby-17343_1920_marked.jpg", clearance: 0, comment_count: 0, like_count: 0, price: 0, category_id: 6)

common_images = [image1, image2, image3, image4, image5, image6, image7, image8, image9, image10, image11, image12]
common_images.each do |image|
	a_photos << image
end

######### photos requiring clearance levels ##"", #########
c_image1 = Photo.create!(image: "portraits/afroamerican-499208_640.jpg", marked_image: "portraits/afroamerican-499208_1920_marked.jpg", clearance: 1, comment_count: 0, like_count: 0, price: 0, category_id: 1)
c_image2 = Photo.create!(image: "portraits/assistant-18993_60.jpg", marked_image: "portraits/assistant-18993_1920_marked.jpg", clearance: 1, comment_count: 0, like_count: 0, price: 0, category_id: 1)

c_image3 = Photo.create!(image: "wedding/banquet-453799_640.jpg", marked_image: "wedding/banquet-453799_1920_marked.jpg", clearance: 1, comment_count: 0, like_count: 0, price: 0, category_id: 2)
c_image4 = Photo.create!(image: "wedding/bride-45144_640.jpg", marked_image: "wedding/bride-45144_1920_marked.jpg", clearance: 1, comment_count: 0, like_count: 0, price: 0, category_id: 2)

c_image5 = Photo.create!(image: "milestones/paternity-633453_640.jpg", marked_image: "milestones/paternity-633453_1920_marked.jpg", clearance: 1, comment_count: 0, like_count: 0, price: 0, category_id: 3)
c_image6 = Photo.create!(image: "milestones/speaker-649039_640.jpg", marked_image: "milestones/speaker-649039_marked.jpg", clearance: 1, comment_count: 0, like_count: 0, price: 0, category_id: 3)
 
c_image7 = Photo.create!(image: "hobby/car-604019_640.jpg", marked_image: "hobby/car-604019_1920_marked.jpg", clearance: 1, comment_count: 0, like_count: 0, price: 0, category_id: 4)
c_image8 = Photo.create!(image: "hobby/dandelion-431079_640.jpg", marked_image: "hobby/dandelion-431079_1920_marked.jpg", clearance: 1, comment_count: 0, like_count: 0, price: 0, category_id: 4)
 
c_image9 = Photo.create!(image: "beauty-pics/girl-237871_640.jpg", marked_image: "beauty-pics/girl-237871_1920_marked.jpg", clearance: 1, comment_count: 0, like_count: 0, price: 0, category_id: 5)
c_image10 = Photo.create!(image: "beauty-pics/girl-410334_640.jpg", marked_image: "beauty-pics/girl-410334_1920_marked.jpg", clearance: 1, comment_count: 0, like_count: 0, price: 0, category_id: 5)
 
c_image11 = Photo.create!(image: "family/baby-20607_640.jpg", marked_image: "family/baby-20607_1920_marked.jpg", clearance: 1, comment_count: 0, like_count: 0, price: 0, category_id: 6)
c_image12 = Photo.create!(image: "family/baby-20674_640.jpg", marked_image: "family/baby-20674_1920_marked.jpg", clearance: 1, comment_count: 0, like_count: 0, price: 0, category_id: 6)
 
c_image13 = Photo.create!(image: "portraits/brunette-15963_640.jpg", marked_image: "portraits/brunette-15963_1920_marked.jpg", clearance: 2, comment_count: 0, like_count: 0, price: 0, category_id: 1)
c_image14 = Photo.create!(image: "portraits/businessman-411487_640.jpg", marked_image: "portraits/businessman-411487_marked.jpg", clearance: 2, comment_count: 0, like_count: 0, price: 0, category_id: 1)
 
c_image15 = Photo.create!(image: "wedding/engagement-637789_640.jpg", marked_image: "wedding/engagement-637789_1920_marked.jpg", clearance: 2, comment_count: 0, like_count: 0, price: 0, category_id: 2)
c_image16 = Photo.create!(image: "wedding/glasses-213156_640.jpg", marked_image: "wedding/glasses-213156_1920_marked.jpg", clearance: 2, comment_count: 0, like_count: 0, price: 0, category_id: 2)
 
c_image17 = Photo.create!(image: "milestones/paternity-633443_640.jpg", marked_image: "milestones/paternity-633443_1920_marked.jpg", clearance: 2, comment_count: 0, like_count: 0, price: 0, category_id: 3)
c_image18 = Photo.create!(image: "milestones/422249_640.jpg", marked_image: "milestones/422249_1920_marked.jpg", clearance: 2, comment_count: 0, like_count: 0, price: 0, category_id: 3)
 
c_image19 = Photo.create!(image: "hobby/grandpa-519246_640.jpg", marked_image: "hobby/grandpa-519246_1920_marked.jpg", clearance: 2, comment_count: 0, like_count: 0, price: 0, category_id: 4)
c_image20 = Photo.create!(image: "hobby/landscape-540122_640.jpg", marked_image: "hobby/landscape-540122_1920_marked.jpg", clearance: 2, comment_count: 0, like_count: 0, price: 0, category_id: 4)
 
c_image21 = Photo.create!(image: "beauty-pics/girl-487094_640.jpg", marked_image: "beauty-pics/girl-487094_marked.jpg", clearance: 2, comment_count: 0, like_count: 0, price: 0, category_id: 5)
c_image22 = Photo.create!(image: "beauty-pics/girl-559307_640.jpg", marked_image: "beauty-pics/girl-559307_1920_marked.jpg", clearance: 2, comment_count: 0, like_count: 0, price: 0, category_id: 5)
 
c_image23 = Photo.create!(image: "family/brothers-457234_640.jpg", marked_image: "family/brothers-457234_1920_marked.jpg", clearance: 2, comment_count: 0, like_count: 0, price: 0, category_id: 6)
c_image24 = Photo.create!(image: "family/brothers-457237_640.jpg", marked_image: "family/brothers-457237_1920_marked.jpg", clearance: 2, comment_count: 0, like_count: 0, price: 0, category_id: 6)

######### photos specific to user ###########
u1_photos = user1.photos
u1_image1 = Photo.create!(image: "beauty-pics/girls-602168_640.jpg", marked_image: "beauty-pics/girls-602168_marked.jpg", comment_count: 0, like_count: 0, price: 2.99)
u1_image2 = Photo.create!(image: "milestones/graduation-52154_640.jpg", marked_image: "milestones/graduation-52154_1920_marked.jpg", comment_count: 0, like_count: 0, price: 2.99)
u1_image3 = Photo.create!(image: "wedding/wedding-626020_640.jpg", marked_image: "wedding/wedding-626020_1920_marked.jpg", comment_count: 0, like_count: 0, price: 2.99)

user1_images = [u1_image1, u1_image2, u1_image3]

user1_images.each do |image|
	u1_photos << image 
end 

u2_photos = user2.photos
u2_image1 = Photo.create!(image: "beauty-pics/studio-660806_640.jpg", marked_image: "beauty-pics/studio-660806_1920_marked.jpg", comment_count: 0, like_count: 0, price: 2.99)
u2_image2 = Photo.create!(image: "milestones/students-422249_640.jpg", marked_image: "milestones/students-422249_1920_marked.jpg", comment_count: 0, like_count: 0, price: 2.99)
u2_image3 = Photo.create!(image: "wedding/wedding-628515_640.jpg", marked_image: "wedding/wedding-628515_1920_marked.jpg", comment_count: 0, like_count: 0, price: 2.99)

user2_images = [u2_image1, u2_image2, u2_image3]

user2_images.each do |image|
	u2_photos << image 
end 

######### nonwatermarkedphotos ###########
# user 1 
photo1 = NonWatermarkedPhoto.create!(image: "beauty-pics/girls-602168.jpg", photo_id: u1_image1.id)
photo2 = NonWatermarkedPhoto.create!(image: "milestones/graduation-52154_1920.jpg", photo_id: u1_image2.id)
photo3 = NonWatermarkedPhoto.create!(image: "wedding/wedding-626020_1920.jpg", photo_id: u1_image3.id)

# user2
photo4 = NonWatermarkedPhoto.create!(image: "beauty-pics/studio-660806_1920.jpg", photo_id: u2_image1.id)
photo5 = NonWatermarkedPhoto.create!(image: "milestones/students-422249_1920.jpg", photo_id: u2_image2.id)
photo6 = NonWatermarkedPhoto.create!(image: "wedding/wedding-628515_1920.jpg", photo_id: u2_image3.id)


# likes
# like1 = Like.create!(user_id: user1.id, favorite_id: blog1.id)
# like2 = Like.create!(user_id: user2.id, favorite_id: blog1.id)
# like3 = Like.create!(user_id: user2.id, favorite_id: blog3.id)

# comments



