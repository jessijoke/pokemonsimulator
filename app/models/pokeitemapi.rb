class Pokeitemapi

    def initialize(poke)
        response = HTTParty.get("https://pokeapi.co/api/v2/item/#{poke}")
        @json = JSON.parse(response.body)
        info
    end

    def info
        pokemon_info = @json
    end
    

end