# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# users
admin = User.create!(first_name: "ricky", last_name: "do", dob: "1/1/11", email: "mail@mail.com", clearance: 0, password:"password", password_confirmation: "password")
user1 = User.create!(first_name: "asap", last_name: "rocky", dob: "1/2/11", email: "mail1@mail.com", clearance: 1, password:"password", password_confirmation: "password")
user2 = User.create!(first_name: "rhinestone", last_name: "cowbody", dob: "1/3/11", email: "mail2@mail.com", clearance: 2, password:"password", password_confirmation: "password")

# blogs
blog1 = Blog.create!(user_id: admin.id, content: "this is my first blog about photos", clearance: 1, comment_count: 0, like_count: 0)
blog2 = Blog.create!(user_id: admin.id, content: "this is my first blog about photos", clearance: 1, comment_count: 0, like_count: 0)
blog3 = Blog.create!(user_id: admin.id, content: "this is my first blog about photos", clearance: 2, comment_count: 0, like_count: 0)
blog4 = Blog.create!(user_id: admin.id, content: "this is my first blog about photos", clearance: 2, comment_count: 0, like_count: 0)

# photos
image1 = Photo.create!(user_id: admin.id, image: "image_url", clearance: 0, comment_count: 0, like_count: 0, price: 0)
image2 = Photo.create!(user_id: admin.id, image: "image_url", clearance: 0, comment_count: 0, like_count: 0, price: 0)
image3 = Photo.create!(user_id: admin.id, image: "image_url", clearance: 1, comment_count: 0, like_count: 0, price: 0)
image4 = Photo.create!(user_id: admin.id, image: "image_url", clearance: 1, comment_count: 0, like_count: 0, price: 0)
image5 = Photo.create!(user_id: admin.id, image: "image_url", clearance: 2, comment_count: 0, like_count: 0, price: 0)

# likes
# like1 = Like.create!(user_id: user1.id, favorite_id: blog1.id)
# like2 = Like.create!(user_id: user2.id, favorite_id: blog1.id)
# like3 = Like.create!(user_id: user2.id, favorite_id: blog3.id)

# comments


# nonwatermarkedphotos
photo3 = NonWatermarkedPhoto.create!(image: "original photo image1", photo_id: image1)
photo1 = NonWatermarkedPhoto.create!(image: "original photo image3", photo_id: image3)
photo2 = NonWatermarkedPhoto.create!(image: "original photo image4", photo_id: image4)


