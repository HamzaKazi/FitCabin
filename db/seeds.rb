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
  address: "Hoxton",
  rating: 5,
  description: "Arnold's gym",
  price: 30,
)
gym.image.attach(io: file, filename: "nes.png", content_type: "image/png")
gym.save

puts "User created"
puts "Workout created"
