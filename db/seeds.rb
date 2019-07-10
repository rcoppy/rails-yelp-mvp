# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.delete_all
Review.delete_all

zhangs = Restaurant.create(name: "Zhang's", address: "393 Copse Rd", category: "chinese", phone_number: "0012032452146")
petrillos = Restaurant.create(name: "Petrillo's", address: "67 Kenneth Hill", category: "italian", phone_number: "0012033452146")
shintaku = Restaurant.create(name: "Shintaku", address: "450 Goose Ln", category: "japanese", phone_number: "0286643452146")
pret = Restaurant.create(name: "Pret a Manger", address: "Calle de Juan de Mariana, 9", category: "french", phone_number: "0123542452146")
bloo = Restaurant.create(name: "BlooBlahBlee", address: "623 Opening Hill Rd", category: "belgian", phone_number: "0012032867566")

Review.create(content: "great people, crap food", rating: 2, restaurant: zhangs)
Review.create(content: "worst pizza i've ever had", rating: 1, restaurant: petrillos)
Review.create(content: "super nice staff", rating: 5, restaurant: shintaku)
Review.create(content: "only been there once, was meh", rating: 3, restaurant: pret)
Review.create(content: "what is this, a joke?", rating: 2, restaurant: bloo)