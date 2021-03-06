require 'igdb_client'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Examples:

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all if Rails.env.development?

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

# # Game.destroy_all if Rails.env.development?

# url_one = "http://res.cloudinary.com/le-wagon-hcquach/image/upload/v1527582718/download.jpg"
# game_one = Game.create(title: "Zelda", description: "The Legend of Zelda: Breath of the Wild is an action-adventure game developed and published by Nintendo. You go around", platform: "SWITCH", photo: "v1527504348/st5fzyj3rdwtazduuu5r.jpg", user_id: 1, price: 100)
# game_one.remote_photo_url = url_one
# game_one.save
# puts
# puts "Game Added completed"

# url_two = "http://res.cloudinary.com/le-wagon-hcquach/iage/upload/v1527573901/cttchmkihhunnt6xltro.jpg"
# game_two = Game.create(title: "Mario Kart 8 Deluxe", description: "Hit the road with the definitive version of Mario Kart 8 and play anytime, anywhere! Race your friends or battle them in a revised battle mode on new and returning battle courses.", platform: "SWITCH", photo: "ilgamjlury6gekkghwci.jpg", user_id: 1, price:100)
# game_two.remote_photo_url = url_two
# game_two.save
# puts
# puts "Game Added completed"

def seed_games
  client = IGDB::Client.new "42a1aefdff269b595c14ef6178c62244"
  get_games = client.games (1..50).to_a, {fields: "name,summary,cover,platforms"}
  get_games.each do |game|
    game_params = {
      user_id: 1,
      title: game.name,
      price: 100,
      description: game.summary,
      # photo: "http:#{game.cover.url}",
      platform: ["XBOX", "SWITCH", "PS4"].sample
    }
    # puts game_params[:title]
    game_instance = Game.create!(game_params)
    game_instance.remote_photo_url = "http:#{game.cover.url}"
    game_instance.save!
  end
end

seed_games


# WIP for seeds ruby style

# headers = {
#   "user-key"  => "42a1aefdff269b595c14ef6178c62244",
#   "Accept" => "application/json"
# }

# response = HTTParty.get('https://api-endpoint.igdb.com/games', :headers => headers)

# p response


