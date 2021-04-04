class PokemonsController < ApplicationController
    before_action :require_logged_in


    def search_for_pokemon
        @random_pokemon = Pokemonapi.new(rand(1..898))
        @pokemon_species = @random_pokemon.info["name"]
        @pokemon_level = rand(1..20)
        @pokemon_sprite = @random_pokemon.info["sprites"]["front_default"]
        @pokemon_type = @random_pokemon.info["types"][0]["type"]["name"]
    end

     
end
