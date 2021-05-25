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


Article.create!(title: "How to be happy", user: me, content: "stay smiling")
