# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Create one admin user
User.create!(
  email: 'admin@example.com',
  password: 'password',
  password_confirmation: 'password',
  admin: true,
  points: 0
)

# Create five regular users
5.times do |i|
  User.create!(
    email: "user#{i+1}@example.com",
    password: 'password',
    password_confirmation: 'password',
    admin: false,
    points: 0
  )
end

puts "Seeded 1 admin and 5 regular users."
