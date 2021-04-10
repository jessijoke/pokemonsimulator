# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pokeballs = ["ultra-ball", "great-ball", "poke-ball", "master-ball", "safari-ball", "park-ball", "sport-ball"]

Store.create(:name => "Pokeball Shop")

pokeballs.each do |pokeball|
    newitem = Pokeitemapi.new(pokeball)
    name = newitem.info["name"].split("-").join(" ")
    cost = newitem.info["cost"]
    category = newitem.info["category"]["name"]
    sprite = newitem.info["sprites"]["default"]
    test = Item.create!(:name => name, :cost => cost, :category => category, :sprite => sprite, :store_id => 1)
end