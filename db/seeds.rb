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
puts "Database cleaned"
workout = Workout.create(date: 10112022)
user = User.create(email: "admin@fitcabin.com", password: "123456")
puts "user #{user.id}"



bmw = Workout.create(
  exercise: "Bench press",
  set: 3,
  rep: 12,
  weight: 90,
  date: "5/9/2022",
  user_id: user.id
)
bmw.save


puts "User created"
puts "Workout created"
