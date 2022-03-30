# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# Fake Doctor
Doctor.destroy_all

15.times do
  Doctor.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 6)
  )
end


# Fake Client
Client.destroy_all

15.times do
  Client.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 6)
  )
end