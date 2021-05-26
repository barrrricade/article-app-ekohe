# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p "destroying"
User.destroy_all
Article.destroy_all

p "seeding"
me = User.create!(email: "desmond@gmail.com", password: "password", name: "desmond")
jim = User.create!(email: "jimbean@gmail.com", password: "password", name: "Jim Bean")



Article.create!(title: "How to be happy", user: me, content: "stay smiling")
Article.create!(title: "How to be love", user: me, content: "open your heart")
Article.create!(title: "How to be happy again", user: me, content: "keep smiling", isPublic: false)

Article.create!(title: "Organs and their weakness", user: jim, content: "Shatter the heart")
Article.create!(title: "Stab Stab Stab", user: jim, content: "pull arrow from quiver, twirl and stab", isPublic: false)
Article.create!(title: "Burn the hertic", user: jim, content: "Sin can only be cleansed with flames", isPublic: false)







p "finished seeding"
