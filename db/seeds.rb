# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


  User.create!(name: "pouix", email: "test@toto.com", password: "secret", phone_number: "987897", description: "SFDKJSHFKCJDS", profile_picture: "hgf")
  User.create!(name: "pouix2", email: "test2@toto.com", password: "secret", phone_number: "987897", description: "SFDKJSHFKCJDS", profile_picture: "hgf")
  User.create!(name: "pouix3", email: "test3@toto.com", password: "secret", phone_number: "987897", description: "SFDKJSHFKCJDS", profile_picture: "hgf")



3.times do
  Midget.create!(name: 'bob', speciality: 'flyer', price: '10', description: 'flying midget', city: 'bordeaux', user_id: User.last.id)
end
