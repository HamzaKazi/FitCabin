# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
require "json"

puts "Cleaning up database..."
Workout.destroy_all
User.destroy_all
Gym.destroy_all
Post.destroy_all
puts "Database cleaned"
workout = Workout.create(date: 10112022)
user = User.create(email: "admin@fitcabin.com", password: "123456")
user2 = User.create(email: "ronaldo@fitcabin.com", password: "123456", first_name: "Ronaldo")
user3 = User.create(email: "Tate@fitcabin.com", password: "123456", first_name: "")
puts "user #{user.id}"

file = URI.open("https://images.unsplash.com/photo-1623946724822-ba48a838f3da?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTk4fHxneW18ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60")
puts "Posts saved"
post = Post.create(
  caption: "New PR!! #LetsGO",
  likes: 210,
  user_id: user.id
)
post.image.attach(io: file, filename: "nes.png", content_type: "image/png")
post.save

file = URI.open("https://i2-prod.mirror.co.uk/incoming/article13142117.ece/ALTERNATES/s1200b/1_Cristiano-Ronaldo-in-the-gym.jpg")
puts "Posts saved"
post = Post.create(
  caption: "SIUUU!",
  likes: 1236,
  user_id: user2.id
)
post.image.attach(io: file, filename: "nes.png", content_type: "image/png")
post.save

file = URI.open("https://preview.redd.it/13gbec0cm0f81.jpg?width=640&crop=smart&auto=webp&s=cca3d2226a89017eccdd2f458b379a404183ead6")
puts "Posts saved"
post = Post.create(
  caption: "TOP G!",
  likes: 450,
  user_id: user3.id
)
post.image.attach(io: file, filename: "nes.png", content_type: "image/png")
post.save

file = URI.open("https://images.unsplash.com/photo-1610441009633-b6ca9c6d4be2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
puts "Posts saved"
post = Post.create(
  caption: "Morning Breakfast! #RiseNGrind",
  likes: 87,
  user_id: user.id
)
post.image.attach(io: file, filename: "nes.png", content_type: "image/png")
post.save

# workout = Workout.create(
#   name: "Legs",
#   date: "5/9/2022",
#   user_id: user.id
# )
# workout.save

# workout = Workout.create(
#   name: "Chest",
#   date: "6/9/2022",
#   user_id: user.id
# )
# workout.save

# workout = Workout.create(
#   name: "Arms",
#   date: "7/9/2022",
#   user_id: user.id
# )
# workout.save

# workout = Workout.create(
#   name: "Back",
#   date: "1/9/2022",
#   user_id: user.id
# )
# workout.save

# workout = Workout.create(
#   name: "Shoulders",
#   date: "3/9/2022",
#   user_id: user.id
# )
# workout.save

# # review = Review.create(
# #   content: "Amazing gym, 10/10 would recommend!",
# #   rating: 5,
# #   user_id: user.id
# # )
# # review.save

# # review = Review.create(
# #   content: "The music is a bit too loud, other than that it's alright",
# #   rating: 4,
# #   user_id: user.id
# # )
# # review.save

# file = URI.open("https://www.gannett-cdn.com/presto/2020/04/16/USAT/5b7ef814-a04d-44c8-86ef-1d47c798a1f1-Golds_gym_CharlesTown.jpg?crop=2655,1494,x10,y0&width=2655&height=1494&format=pjpg&auto=webp")
# file1 = URI.open("https://www.leisureopportunities.co.uk/images/THUMB20829_768303.jpg")
# file2 = URI.open("https://www.leisureopportunities.co.uk/images/THUMB20829_768303.jpg")
# file3 = URI.open("https://i4.hurimg.com/i/hurriyet/75/1200x675/5cecfecf67b0a90b9ca0d41f.jpg")
# file4 = URI.open("https://www.thenewsminute.com/sites/default/files/Golds_Gym_Rajamundry.jpg")
# file5 = URI.open("https://i.insider.com/5e9859ecdcd88c5e8c061688?width=700")
# puts "save worked"

# gym = Gym.create(
#   name: "Golds Gym",
#   address: "54-62 Uxbridge Rd, London W7 3SU",
#   rating: 3.9,
#   description: "Arnold's gym",
#   price: 40
# )
# gym.images.attach(io: file, filename: "nes.png", content_type: "image/png")
# gym.images.attach(io: file1, filename: "nes.png", content_type: "image/png")
# gym.images.attach(io: file2, filename: "nes.png", content_type: "image/png")
# gym.images.attach(io: file3, filename: "nes.png", content_type: "image/png")
# gym.images.attach(io: file4, filename: "nes.png", content_type: "image/png")
# gym.images.attach(io: file5, filename: "nes.png", content_type: "image/png")
# gym.save

# file = URI.open("https://www.thirdspace.london/media/CW-Header3B@2x.jpg")
# file1 = URI.open("https://media.vogue.co.uk/photos/5d54841cb1c563000856f935/master/pass/original")
# file2 = URI.open("https://group.canarywharf.com/wp-content/uploads/2021/03/canary-wharf-media-release-third-space-wood-wharf-310119-1-741x417-1.jpg")
# file3 = URI.open("https://www.thirdspace.london/media/22_03_03_Third_Space_Soho_03.03.22_051-scaled.jpg")
# file4 = URI.open("https://www.theresident.co.uk/resource/blob/8827672/7e7d3bca0e1884ea1d077a07b9d434bc/the-yard-at-third-space-50cea09e-data.jpg")
# file5 = URI.open("https://i.ytimg.com/vi/5Yr0o8mVofI/maxresdefault.jpg")
# puts "save worked"

# gym = Gym.create(
#   name: "Third Space",
#   address: "Canary Wharf, 16-19 Canada Square, London E14 5ER",
#   rating: 4.8,
#   description: "High-end fitness club featuring a pool, sauna & spa, training equipment & a climbing wall.",
#   price: 180
# )
# gym.images.attach(io: file, filename: "nes.png", content_type: "image/png")
# gym.images.attach(io: file1, filename: "nes.png", content_type: "image/png")
# gym.images.attach(io: file2, filename: "nes.png", content_type: "image/png")
# gym.images.attach(io: file3, filename: "nes.png", content_type: "image/png")
# gym.images.attach(io: file4, filename: "nes.png", content_type: "image/png")
# gym.images.attach(io: file5, filename: "nes.png", content_type: "image/png")
# gym.save

# file = URI.open("https://www.qmsu.org/asset/News/21286/personaltraining.jpg?thumbnail_width=360&thumbnail_height=335&resize_type=CropToFit")
# file1 = URI.open("https://www.qmsu.org/pageassets/qmotion/facilities/Qmotion-reception.jpg")
# file2 = URI.open("https://www.qmsu.org/pageassets/qmotion/facilities/Free-weights.jpg")
# file3= URI.open("https://www.qmsu.org/pageassets/qmotion/qmotionnewheader.jpg?thumbnail=true&height=750&width=2000&resize_type=ResizeFitAll")
# puts "save worked"
# gym = Gym.create(
#   name: "Qmotion Sport and Fitness Centre",
#   address: "15 Godward Square, Bethnal Green, London E1 4FZ",
#   rating: 4.2,
#   description: "Queen Mary University gym offering strength & cardio equipment, personal training & group classes.",
#   price: 29.99
# )
# gym.images.attach(io: file, filename: "nes.png", content_type: "image/png")
# gym.images.attach(io: file1, filename: "nes.png", content_type: "image/png")
# gym.images.attach(io: file2, filename: "nes.png", content_type: "image/png")
# gym.images.attach(io: file3, filename: "nes.png", content_type: "image/png")
# gym.save

# file = URI.open("https://prod-ne-cdn-media.puregym.com/media/794204/londonshoreditch201808_016.jpg?quality=80")
# puts "save worked"
# gym = Gym.create(
#   name: "Pure Gym",
#   address: "8 Bacon St, London E1 6LF",
#   rating: 4,
#   description: "The PureGym Group is one of the largest gym and fitness operators in Europe and provides high quality, low cost, flexible physical fitness facilities.",
#   price: 25
# )
# gym.images.attach(io: file, filename: "nes.png", content_type: "image/png")
# gym.save

# file = URI.open("https://media.vanityfair.com/photos/5e8f3038b263650008165bba/4:3/w_1776,h_1332,c_limit/barrys-bootcamp-online-classes.jpg")
# puts "save worked"
# gym = Gym.create(
#   name: "Barry's Bootcamp",
#   address: "163 Euston Rd, London NW1 2BH",
#   rating: 4.6,
#   description: "Opened in 2013, Central is the OG London studio and one of the first boutique fitness concepts to hit the UK. It was also the first basement-level Red Room.",
#   price: 79.99
# )
# gym.images.attach(io: file, filename: "nes.png", content_type: "image/png")
# gym.save

# file = URI.open("https://www.thirdspace.london/media/blog-main-190121.jpg")
# puts "save worked"
# gym = Gym.create(
#   name: "Virgin Active",
#   address: "Hoxton",
#   rating: 4.4,
#   description: "Join a community of riders, trainers, stretchers and activists today. T&Cs apply. Be fit. Be happy. Be well. Be human at Virgin Active. Join Today. T&Cs apply.",
#   price: 150
# )
# gym.images.attach(io: file, filename: "nes.png", content_type: "image/png")
# gym.save

# file = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/15/b1/35/1c/the-amazing-cardio-area.jpg")
# puts "save worked"
# gym = Gym.create(
#   name: "Gymbox Covent Garden",
#   address: " 42-49 St Martin's Ln, London WC2N 4EJ",
#   rating: 4.6,
#   description: "At Gymbox Covent Garden, you've got a front-row ticket to a high-performance London gym that knows how to pull in the crowds",
#   price: 30
# )
# gym.images.attach(io: file, filename: "nes.png", content_type: "image/png")
# gym.save

# file = URI.open("https://manofmany.com/wp-content/uploads/2018/03/Best-Boxing-Gyms-Melbourne-Dohertys-Gym.jpg")
# puts "save worked"
# gym = Gym.create(
#   name: "KO Boxing",
#   address: "187 Bancroft Rd, Bethnal Green, London E1 4ET",
#   rating: 5,
#   description: "Hidden away, the setting is simple and effective. Mirroring the atmosphere of traditional boxing gyms.",
#   price: 45
# )
# gym.images.attach(io: file, filename: "nes.png", content_type: "image/png")
# gym.save

# file = URI.open("https://www.fitnessfirst.co.uk/media/ztcbzv5l/fitnessfirst-w21-interiors-bangor-106.jpg?width=540&height=405&quality=80&rnd=132890619953070000")
# puts "save worked"
# gym = Gym.create(
#   name: "FitnessFirst",
#   address: "128 Albert St, London NW1 7NE",
#   rating: 3.8,
#   description: "Explore a wide variety of classes and special training programmes on offer. Browse Classes. Sign Up For Offers. Find A Gym. Courses: Bodycombat, Spinning, Circuit Training, Pilates, Boxercise.",
#   price: 30
# )
# gym.images.attach(io: file, filename: "nes.png", content_type: "image/png")
# gym.save

# file = URI.open("https://images.squarespace-cdn.com/content/v1/5f1b2a53a0f2f72f69d3c522/1595859171436-PJRH0FRCCGSXY71X4ZUD/Gymbox+Home+Page.jpg")
# puts "save worked"
# gym = Gym.create(
#   name: "GymBox",
#   address: "Westfield stratford city, 6A Chestnut Place, London E20 1GL",
#   rating: 3.5,
#   description: "We're home to the most unique and diverse classes in London. Olympic sized boxing rings, combat cages, world-class free weights sections, live DJs and larger-than-life personal trainers.",
#   price: 69.99
# )
# gym.images.attach(io: file, filename: "nes.png", content_type: "image/png")
# gym.save

# file = URI.open("https://milieuconsult.com/wp-content/uploads/2015/05/TTS-Web-2.jpg")
# puts "save worked"
# gym = Gym.create(
#   name: "Third Space Soho",
#   address: "67 Brewer St, London W1F 9US",
#   rating: 4.9,
#   description: "Purpose-built studios for extensive yoga, hot yoga, barre and Pilates classes, led by inspirational and expert instructors. Explore Show less.",
#   price: 220
# )
# gym.images.attach(io: file, filename: "nes.png", content_type: "image/png")
# gym.save

puts "User created"
puts "Workout created"
