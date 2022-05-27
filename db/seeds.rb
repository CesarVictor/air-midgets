# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   movies = Movie.create({ name: 'Star Wars' }, { name: 'Lord of the Rings' })
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

file = URI.open('https://cdn.futura-sciences.com/buildsv6/images/largeoriginal/d/9/a/d9a1058910_50163142_elon-musk1.jpg')
user = User.create!(name: "Admin", email: "admin@airmidget.com", password: "secret", phone_number: "003 6 75 76 78 89", description: "PMM: Professionnal Midget Manager")
user.photo.attach(io: file, filename: 'admin.png', content_type: 'image/png')


file = URI.open('https://resize.programme-television.ladmedia.fr/r/670,670/img/var/premiere/storage/images/tele-7-jours/news-tv/fort-boyard-passe-partout-va-jouer-dans-une-serie-de-france-2-4659787/99169631-1-fre-FR/Fort-Boyard-Passe-Partout-va-jouer-dans-une-serie-de-France-2.jpg')
midget = Midget.create!(name: 'Passe-Partout', speciality: 'KeyHolder', price: '250', description: 'The very best door opener', city: 'La Rochelle', user_id: User.last.id)
midget.photo.attach(io: file, filename: 'Passe-Partout.png', content_type: 'image/png')

file = URI.open('https://ih1.redbubble.net/image.1462807851.6349/poster,840x830,f8f8f8-pad,1000x1000,f8f8f8.jpg')
midget = Midget.create!(name: 'Flying Bob', speciality: 'Flyer', price: '200', description: 'I believe i can fly', city: 'Paris', user_id: User.last.id)
midget.photo.attach(io: file, filename: 'Flying-Bob.png', content_type: 'image/png')

file = URI.open('https://www.pwmania.com/wp-content/uploads/2014/05/short-sleeve-sampson.jpg')
midget = Midget.create!(name: 'The Undertaker', speciality: 'Wrestler', price: '290', description: 'WBA/WBC defending champ', city: 'Marseille', user_id: User.last.id)
midget.photo.attach(io: file, filename: 'Undertaker.png', content_type: 'image/png')

file = URI.open('https://media.ouest-france.fr/v1/pictures/eb3571f71fd10440dbd3868a237b9964-zemour.jpg?client_id=cmsfront&sign=e2500686c72d48627f11d43cb7ea9a8042bc12263263fee922f0de2fd216065e')
midget = Midget.create!(name: 'Grincheux', speciality: 'Security Agent', price: '290', description: "Don't f**k with me", city: 'Lyon', user_id: User.last.id)
midget.photo.attach(io: file, filename: 'Grincheux.png', content_type: 'image/png')

file = URI.open('https://mdsnet.fw.cdnpull.com/inline_resized_1024_5adba2e21b58f_267949.jpg')
midget = Midget.create!(name: 'MiniMe', speciality: 'Your very own doppleganger', price: '345', description: "Why am i so bad?", city: 'Bordeaux', user_id: User.last.id)
midget.photo.attach(io: file, filename: 'MiniMe.png', content_type: 'image/png')

file = URI.open('https://mvistatic.com/photosmvi/2021/03/20/P25403832D4547783G.jpg')
midget = Midget.create!(name: 'Jojo', speciality: 'Ange gardien', price: '1200', description: "Ask my agent", city: 'Paris', user_id: User.last.id)
midget.photo.attach(io: file, filename: 'jojo.png', content_type: 'image/png')

file = URI.open('https://i.pinimg.com/originals/b6/1e/ee/b61eeef4fc0c95e0ec6f1e154a514393.jpg')
midget = Midget.create!(name: 'KeMonito', speciality: 'Fighter', price: '1500', description: "Lucha Libre", city: 'Mexico', user_id: User.last.id)
midget.photo.attach(io: file, filename: 'Kemonito.png', content_type: 'image/png')
