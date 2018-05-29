# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.destroy_all if Rails.env.development?

Game.create(title: "Zelda", description: "The Legend of Zelda: Breath of the Wild is an action-adventure game developed and published by Nintendo.", platform: "SWITCH", photo: "image/upload/v1527504348/st5fzyj3rdwtazduuu5r.jpg", user_id: 1)
puts
puts "Game Added completed"

Game.create(title: "Mario Kart 8 Deluxe", description: "Hit the road with the definitive version of Mario Kart 8 and play anytime, anywhere! Race your friends or battle them in a revised battle mode on new and returning battle courses.", platform: "SWITCH", photo: "image/upload/v1527573901/cttchmkihhunnt6xltro.jpg", user_id: 1)

puts
puts "Game Added completed"

User.destroy_all if Rails.env.development?

User.create(username: "oladhari", email: "oussama@gmail.com", password:  "topsecret", password_confirmation: "topsecret", address: "Nara, Japan")
puts
puts "User Added completed"

User.create(username: "reymon29", email: "rey@gmail.com", password:  "topsecret", password_confirmation: "topsecret", address: "Tokyo, Japan")
puts
puts "User Added completed"

User.create(username: "hcquach", email: "hc@gmail.com", password:  "topsecret", password_confirmation: "topsecret", address: "Paris, France")
puts
puts "User Added completed"

User.create(username: "gianluca24", email: "luca@gmail.com", password:  "topsecret", password_confirmation: "topsecret", address: "Manila, Philippines")
puts
puts "User Added completed"
