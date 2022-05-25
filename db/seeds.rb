# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   movies = Movie.create({ name: 'Star Wars' }, { name: 'Lord of the Rings' })
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(name: "Admin", email: "admin@airmidget.com", password: "secret", phone_number: "003 6 75 76 78 89", description: "PMM: Professionnal Midget Manager")

Midget.create!(name: 'Passe-Partout', speciality: 'KeyHolder', price: '250', description: 'The very best door opener', city: 'La Rochelle', user_id: User.last.id)
Midget.create!(name: 'Flying Bob', speciality: 'Flyer', price: '200', description: 'I believe i can fly', city: 'Paris', user_id: User.last.id)
Midget.create!(name: 'The Undertaker', speciality: 'Wrestler', price: '290', description: 'WBA/WBC defending champ', city: 'Marseille', user_id: User.last.id)
Midget.create!(name: 'Grincheux', speciality: 'Security Agent', price: '290', description: "Don't f**k with me", city: 'Lyon', user_id: User.last.id)
Midget.create!(name: 'MiniMe', speciality: 'Your very own doppleganger', price: '345', description: "Why am i so bad?", city: 'Bordeaux', user_id: User.last.id)
Midget.create!(name: 'Jojo', speciality: 'Ange gardien', price: '1200', description: "Ask my agent", city: 'Paris', user_id: User.last.id)
