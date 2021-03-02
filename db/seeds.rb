# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Listing.destroy_all
Review.destroy_all
Favorite.destroy_all

me = User.create(username: "zoaesis", password: "1234", name: "Zoe", city: "San Diego", state: "CA", email: "zoekirsh@gmail.com")

tester = Listing.create(title: "Test", price: 2500, sqf: 1000, bed: 3, bath: 2, image: "test/image", lat: 7000.0, lng: -17.34)

Favorite.create(user_id: me.id, listing_id: tester.id)

