# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.create(name: "Steven", bio: "HANNNN", pro_image: "https://orig00.deviantart.net/6293/f/2010/322/0/c/llama_in_pajamas_by_mystery_dude-d3336be.jpg", password: "flatiron")
# User.create(name: "Anthony", bio: "HMMMM", pro_image: "https://i.pinimg.com/originals/3a/4d/fc/3a4dfc434553adf8b111ab3f8aad4d49.jpg")

require 'open-uri'
30.times do
  user = User.create(name: Faker::Name.name, password: "password", password_confirmation: "password", bio: Faker::ChuckNorris.fact)
  # user.avatar.attach(io: File.open('../app/assets/images/posts/'), filename: 'download.jpeg')
end

10.times do
  num = rand(1..30)

  # pic = File.open(Dir['app/assets/images/*.jpeg'].sample)
  post = Post.create(caption: Faker::Seinfeld.quote, location: Faker::Nation.capital_city, user_id: num, post_image: "http://www.personal.psu.edu/users//w/z/wzz5072/mini.jpg")
  # post.post_image.attach(io: File.open('../app/assets/images/posts/'), filename: 'download.jpeg')

end

50.times do
  user = rand(1..30)
  post = rand(1..300)
  Comment.create(user_id: user, post_id: post, content: Faker::FamilyGuy.quote)
end
