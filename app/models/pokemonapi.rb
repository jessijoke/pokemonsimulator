class Pokemonapi

    def initialize(poke)
        response = HTTParty.get("https://pokeapi.co/api/v2/pokemon/#{poke}")
        @json = JSON.parse(response.body)
    end

    def info
        pokemon_info = @json
    end
    
end

