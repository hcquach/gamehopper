# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

url = "https://itemdrop.co.uk/image/catalog/zldabwns.jpg"
game = Game.new(title: "Zelda", description: "The Legend of Zelda: Breath of the Wild is an action-adventure game developed and published by Nintendo.", platform: "SWITCH", user_id: 1)
game.remote_photo_url = url
game.save
