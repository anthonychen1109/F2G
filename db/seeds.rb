# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.create(name: "Steven", bio: "HANNNN", pro_image: "https://orig00.deviantart.net/6293/f/2010/322/0/c/llama_in_pajamas_by_mystery_dude-d3336be.jpg", password: "flatiron")
# User.create(name: "Anthony", bio: "HMMMM", pro_image: "https://i.pinimg.com/originals/3a/4d/fc/3a4dfc434553adf8b111ab3f8aad4d49.jpg")

Post.create(image: "photo1", location: "NYC", user_id: 1)
Post.create(image: "photo2", location: "SF", user_id: 2)

Comment.create(user_id: 1, post_id: 1, content: "wow that's a nice llama")
Comment.create(user_id: 2, post_id: 2, content: "Llammaaa")
