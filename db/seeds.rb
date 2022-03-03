# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

test_user = User.create(email: "test@test.com", password: "testtest", first_name: "Test", last_name: "Test")
bob = User.create(email: "bob@test.com", password: "testtest", first_name: "Bob", last_name: "Test")

blog_1 = test_user.blogs.create(title: "Test Blog 1", content: "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi odit voluptatibus illum a reiciendis officia quis nostrum, voluptate, commodi quidem vel inventore reprehenderit, consequuntur labore quam recusandae ipsam impedit alias.", likes: 0, dislikes: 0)
blog_2 = test_user.blogs.create(title: "Test Blog 2", content: "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi odit voluptatibus illum a reiciendis officia quis nostrum, voluptate, commodi quidem vel inventore reprehenderit, consequuntur labore quam recusandae ipsam impedit alias.", likes: 0, dislikes: 0)
blog_3 = test_user.blogs.create(title: "Test Blog 3", content: "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi odit voluptatibus illum a reiciendis officia quis nostrum, voluptate, commodi quidem vel inventore reprehenderit, consequuntur labore quam recusandae ipsam impedit alias.", likes: 0, dislikes: 0)

comment_1 = Comment.create(user_id: 2, blog_id: 1, content: "Great Blog", likes: 1, dislikes: 0)
comment_2 = Comment.create(user_id: 1, blog_id: 1, content: "Thanks!", likes: 1, dislikes: 0)
comment_3 = Comment.create(user_id: 2, blog_id: 1, content: "You're Welcome", likes: 1, dislikes: 0)