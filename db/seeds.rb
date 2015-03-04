# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# users
admin = Admin.create!(first_name: "ricky", last_name: "do", email: "mail@mail.com", password: "p@ssw0rd123A", password_confirmation: "p@ssw0rd123A")
user1 = User.create!(first_name: "asap", last_name: "rocky", email: "mail1@mail.com", clearance: 1, password:"p@ssw0rd123A", password_confirmation: "p@ssw0rd123A")
user2 = User.create!(first_name: "rhinestone", last_name: "cowbody", email: "mail2@mail.com", clearance: 2, password:"p@ssw0rd123A", password_confirmation: "p@ssw0rd123A")

# blogs
blog1 = Blog.create!(admin_id: admin.id, content: "this is my first blog about photos", clearance: 1, comment_count: 0, like_count: 0)
blog2 = Blog.create!(admin_id: admin.id, content: "this is my first blog about photos", clearance: 1, comment_count: 0, like_count: 0)
blog3 = Blog.create!(admin_id: admin.id, content: "this is my first blog about photos", clearance: 2, comment_count: 0, like_count: 0)
blog4 = Blog.create!(admin_id: admin.id, content: "this is my first blog about photos", clearance: 2, comment_count: 0, like_count: 0)

# photos
image1 = Photo.create!(admin_id: admin.id, image: "image_url", clearance: 1, comment_count: 0, like_count: 0, price: 0)
image2 = Photo.create!(admin_id: admin.id, image: "image_url", clearance: 1, comment_count: 0, like_count: 0, price: 0)
image3 = Photo.create!(admin_id: admin.id, image: "image_url", clearance: 1, comment_count: 0, like_count: 0, price: 0)
image4 = Photo.create!(admin_id: admin.id, image: "image_url", clearance: 2, comment_count: 0, like_count: 0, price: 0)
image5 = Photo.create!(admin_id: admin.id, image: "image_url", clearance: 2, comment_count: 0, like_count: 0, price: 0)

# likes
# like1 = Like.create!(user_id: user1.id, favorite_id: blog1.id)
# like2 = Like.create!(user_id: user2.id, favorite_id: blog1.id)
# like3 = Like.create!(user_id: user2.id, favorite_id: blog3.id)

# comments


# nonwatermarkedphotos
photo3 = NonWatermarkedPhoto.create!(image: "original photo image1", photo_id: image1)
photo1 = NonWatermarkedPhoto.create!(image: "original photo image3", photo_id: image3)
photo2 = NonWatermarkedPhoto.create!(image: "original photo image4", photo_id: image4)


