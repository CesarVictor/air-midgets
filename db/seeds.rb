# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   movies = Movie.create({ name: 'Star Wars' }, { name: 'Lord of the Rings' })
#   Character.create(name: 'Luke', movie: movies.first)


10.times do
  User.create(name: "Jean-Mouloud", email: "mouloudfc@gmail.com", phone_number: "078765676", description: "Bonjour je loue des nains pour des spectacles",)
  User.create(name: "Kojack", email: "jyffc@gmail.com", phone_number: "078765676", description: "Bonjour je loue des nains pour des spectacles",)
  User.create(name: "Patruche", email: "kguuboinouc@gmail.com", phone_number: "078765676", description: "Bonjour je loue des nains pour des spectacles",)
  User.create(name: "Maurisson", email: "vuyguyvyj@gmail.com", phone_number: "078765676", description: "Bonjour je loue des nains pour des spectacles",)
  User.create(name: "Kroky", email: "jvjbzfeigiuy@gmail.com", phone_number: "078765676", description: "Bonjour je loue des nains pour des spectacles",)
end
