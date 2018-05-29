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

url = "http://www.mobygames.com/images/covers/l/94755-halo-3-xbox-360-front-cover.jpg"
game = Game.new(title: "Halo 3", description: "The best Halo in the whole damn universe. Literally Bungie went downhill after this, so you have to play this, please.", platform: "XBOX", user_id: 2)
game.remote_photo_url = url
game.save

url = "http://solismagazine.com/wp-content/uploads/2017/06/BL0rKke.jpg"
game = Game.new(title: "God of War", description: "The manliest man-god demi man badass person is back but this time he's a dad and he has to go to the top of a mountain or his son will cry.", platform: "PS4", user_id: 3)
game.remote_photo_url = url
game.save

url = "http://www.mobygames.com/images/covers/l/324805-forza-motorsport-6-vip-xbox-one-front-cover.png"
game = Game.new(title: "Zelda", description: "Go fast, COME FASTER. Forza Motorsport 6 is for all those gear heads who wanna GO FAST, HARD. Come and go? Or just GO.", platform: "XBOX", user_id: 4)
game.remote_photo_url = url
game.save

url = "http://www.mobygames.com/images/covers/l/466339-kirby-star-allies-nintendo-switch-front-cover.png"
game = Game.new(title: "Kirby: Star Allies", description: "Kirby has always eaten people for fun, but instead of digesting them slowly and gaining their strength, why don't you force them to fight for you as your ally?! Welcome to Kirby: Star Allies.", platform: "SWITCH", user_id: 5)
game.remote_photo_url = url
game.save

url = "https://images-na.ssl-images-amazon.com/images/I/71pVqC4lxwL._SX342_.jpg"
game = Game.new(title: "Halo: Master Chief Collection", description: "The badass super soldier/master chief is back, and his legacy is coming with him. Explore all of the golden Halo Games from back in the day, NOW!.", platform: "XBOX", user_id: 6)
game.remote_photo_url = url
game.save

url = "http://www.mobygames.com/images/covers/l/309085-dishonored-xbox-360-front-cover.png"
game = Game.new(title: "Dishonored", description: "You are a badass teleporting bodyguard who can either kill everyone you see or just lay low in the shadows sneaking around with your sneakers as you try to topple a monarchy to avenge your fallen queen.", platform: "XBOX", user_id: 7)
game.remote_photo_url = url
game.save

url = "https://raru.co.za/cover/2015/07/10/2830638-l.jpg?v=1465292340"
game = Game.new(title: "Horizon: Zero Dawn", description: "Humanity is on the brink, robot diinosaurs are real, and everyone is pretty much a caveman. Play Aloy (not Alloy) as you discover what the heck project zero dawn was and why robot dinosaurs are a thing.", platform: "PS4", user_id: 8)
game.remote_photo_url = url
game.save

url = "https://images-na.ssl-images-amazon.com/images/I/81pPujOFS1L._SL1500_.jpg"
game = Game.new(title: "Bloodborne", description: "Hunt or be hunted...or just be yourself as you enter the nightmarish city of Yahrnam (mispelled?) and fight a bunch of crazies, ghouls, and demons, to uncover the trush as to why the heck you're trapped there in the first place.", platform: "PS4", user_id: 9)
game.remote_photo_url = url
game.save

url = "http://www.mobygames.com/images/covers/l/240130-dark-souls-xbox-360-front-cover.jpg"
game = Game.new(title: "Dark Souls", description: "Crash bandicoot is the darksouls of platforming, this is the dark souls of that, yadda yadda, but you know what isn't the dark souls of something? Actually muthatrucking darksouls. Prepare to have your anus widened with one of the most influential games in the industry.", platform: "XBOX", user_id: 10)
game.remote_photo_url = url
game.save

url = "http://www.mobygames.com/images/covers/l/99411-call-of-duty-4-modern-warfare-xbox-360-front-cover.jpg"
game = Game.new(title: "Call of Duty: Modern Warfare 4", description: "One of the best call of duty games out there. Of course the game comes with a 12 year old kid yelling obscenities at you and your mother but you can avoid this by playing one of the best singleplayer campaigns in the entire franchise.", platform: "XBOX", user_id: 11)
game.remote_photo_url = url
game.save

url = "https://cdn7.bigcommerce.com/s-m4soz87148/images/stencil/1280x1280/products/184/446/cover_medium_5cbbd914-5bf6-4bd7-b764-78820b8baf49__49727.1514317668.jpg?c=2&imbypass=on"
game = Game.new(title: "Zelda", description: "Literally Dark souls with Japanese magic and a samurai bun. Actually scratch that, you play William a badass European dude chopping down ancient Japanese baddies and meeting some of the most iconic Japanese warlords and heroes to date as you try to reclaim your tiny fairy friend. Dark souls for weebs? Nah more like Darksouls ancient unforgiving Japan edition.", platform: "PS4", user_id: 12)
game.remote_photo_url = url
game.save

url = "https://vignette.wikia.nocookie.net/nintendo/images/3/3b/Super_Mario_Odyssey_Box_art_%28EU%29.jpg/revision/latest?cb=20170909175809&path-prefix=en"
game = Game.new(title: "Super Mario Odyssey", description: "Seriously a great switch game. One of the few games on the nintendo switch worth purchasing and a phenominal leap in the mario game franchise. Spectacular level design and replayability will leave you hungry for more. So go play this game if this isn't in your limited switch library what are you doing with your life.", platform: "SWITCH", user_id: 13)
game.remote_photo_url = url
game.save

