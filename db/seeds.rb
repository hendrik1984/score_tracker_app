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

# Create PageTags
page1 = PageTag.create!(name: 'Batch 1')
page2 = PageTag.create!(name: 'Batch 2')

# Create users and assign them to pages with different points
5.times do |i|
  user = User.create!(
    email: "user#{i+1}@example.com",
    password: 'password',
    password_confirmation: 'password',
    admin: false
  )

  # Assign users to pages with different points
  PageTagUser.create!(user: user, page_tag: page1, points: 0)
  PageTagUser.create!(user: user, page_tag: page2, points: 0)
end

puts "Seeded 5 users with points across two PageTags."
