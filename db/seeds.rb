# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Post.destroy_all
Comment.destroy_all

user1 = User.create(username: "Jason", password:"JasonP", profile_img: "https://media.giphy.com/media/khl6RE8XNiwxstKNzE/giphy.gif", description: "I'm confused")
user2 = User.create(username: "Valentin", password:"ValentinP", profile_img: "https://media.giphy.com/media/khl6RE8XNiwxstKNzE/giphy.gif",  description: "I'm confused as well")
user3 = User.create(username: "Joseph", password:"Joseph", profile_img: "https://media.giphy.com/media/khl6RE8XNiwxstKNzE/giphy.gif",  description: "I'm leaving")


post1 = Post.create(user_id: user1.id, img:"https://media.giphy.com/media/12rd2RF8scA0CI/giphy.gif", content:"Some random content")
post2 = Post.create(user_id: user3.id, img:"https://media.giphy.com/media/khl6RE8XNiwxstKNzE/giphy.gif", content:"Some nice content")
post3 = Post.create(user_id: user2.id, img:"https://media.giphy.com/media/khl6RE8XNiwxstKNzE/giphy.gif", content:"Some bad content")

comment1 = Comment.create(user_id:user3.id, post_id: post1.id, content: "What am i doing?")
comment2 = Comment.create(user_id:user2.id, post_id: post3.id, content: "Hope this works")
comment3 = Comment.create(user_id:user1.id, post_id: post2.id, content: "What time is it")
comment4 = Comment.create(user_id:user1.id, post_id: post1.id, content: "testing")
comment5 = Comment.create(user_id:user1.id, post_id: post3.id, content: "is this working???")

user1.followers << user2
user2.followers << user1
