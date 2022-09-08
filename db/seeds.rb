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
puts "Database cleaned"
workout = Workout.create(date: 10112022)
user = User.create(email: "admin@fitcabin.com", password: "123456")
puts "user #{user.id}"



# bmw = Workout.create(
#   name: "Bench press",
#   set: 3,
#   rep: 12,
#   weight: 90,
#   date: "5/9/2022",
#   user_id: user.id
# )
# bmw.save

file = URI.open("https://www.gannett-cdn.com/presto/2020/04/16/USAT/5b7ef814-a04d-44c8-86ef-1d47c798a1f1-Golds_gym_CharlesTown.jpg?crop=2655,1494,x10,y0&width=2655&height=1494&format=pjpg&auto=webp")
puts "save worked"
gym = Gym.create(
  name: "Golds Gym",
  address: "54-62 Uxbridge Rd, London W7 3SU",
  rating: 3.9,
  description: "Arnold's gym",
  price: 40
)
gym.image.attach(io: file, filename: "nes.png", content_type: "image/png")
gym.save

file = URI.open("https://www.thirdspace.london/media/CW-Header3B@2x.jpg")
puts "save worked"
gym = Gym.create(
  name: "Third Space",
  address: "Canary Wharf, 16-19 Canada Square, London E14 5ER",
  rating: 4.8,
  description: "High-end fitness club featuring a pool, sauna & spa, training equipment & a climbing wall.",
  price: 180
)
gym.image.attach(io: file, filename: "nes.png", content_type: "image/png")
gym.save

file = URI.open("https://www.qmsu.org/asset/News/21286/personaltraining.jpg?thumbnail_width=360&thumbnail_height=335&resize_type=CropToFit")
puts "save worked"
gym = Gym.create(
  name: "Qmotion Sport and Fitness Centre",
  address: "15 Godward Square, Bethnal Green, London E1 4FZ",
  rating: 4.2,
  description: "Queen Mary University gym offering strength & cardio equipment, personal training & group classes.",
  price: 29.99
)
gym.image.attach(io: file, filename: "nes.png", content_type: "image/png")
gym.save

file = URI.open("https://prod-ne-cdn-media.puregym.com/media/794204/londonshoreditch201808_016.jpg?quality=80")
puts "save worked"
gym = Gym.create(
  name: "Pure Gym",
  address: "8 Bacon St, London E1 6LF",
  rating: 4,
  description: "The PureGym Group is one of the largest gym and fitness operators in Europe and provides high quality, low cost, flexible physical fitness facilities.",
  price: 25
)
gym.image.attach(io: file, filename: "nes.png", content_type: "image/png")
gym.save

file = URI.open("")
puts "save worked"
gym = Gym.create(
  name: "Golds Gym",
  address: "Hoxton",
  rating: 5,
  description: "Arnold's gym",
  price: 30
)
gym.image.attach(io: file, filename: "nes.png", content_type: "image/png")
gym.save

file = URI.open("")
puts "save worked"
gym = Gym.create(
  name: "Golds Gym",
  address: "Hoxton",
  rating: 5,
  description: "Arnold's gym",
  price: 30
)
gym.image.attach(io: file, filename: "nes.png", content_type: "image/png")
gym.save

file = URI.open("")
puts "save worked"
gym = Gym.create(
  name: "Golds Gym",
  address: "Hoxton",
  rating: 5,
  description: "Arnold's gym",
  price: 30
)
gym.image.attach(io: file, filename: "nes.png", content_type: "image/png")
gym.save

file = URI.open("")
puts "save worked"
gym = Gym.create(
  name: "Golds Gym",
  address: "Hoxton",
  rating: 5,
  description: "Arnold's gym",
  price: 30
)
gym.image.attach(io: file, filename: "nes.png", content_type: "image/png")
gym.save

file = URI.open("")
puts "save worked"
gym = Gym.create(
  name: "Golds Gym",
  address: "Hoxton",
  rating: 5,
  description: "Arnold's gym",
  price: 30
)
gym.image.attach(io: file, filename: "nes.png", content_type: "image/png")
gym.save

file = URI.open("")
puts "save worked"
gym = Gym.create(
  name: "Golds Gym",
  address: "Hoxton",
  rating: 5,
  description: "Arnold's gym",
  price: 30
)
gym.image.attach(io: file, filename: "nes.png", content_type: "image/png")
gym.save

file = URI.open("")
puts "save worked"
gym = Gym.create(
  name: "Golds Gym",
  address: "Hoxton",
  rating: 5,
  description: "Arnold's gym",
  price: 30
)
gym.image.attach(io: file, filename: "nes.png", content_type: "image/png")
gym.save

puts "User created"
puts "Workout created"
