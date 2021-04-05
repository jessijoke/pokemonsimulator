class Pokemonapi

    def initialize(poke)
        response = HTTParty.get("https://pokeapi.co/api/v2/pokemon/#{poke}")
        @json = JSON.parse(response.body)
    end

    def info
        pokemon_info = @json
    end
    
end

#private

    # API_URL = 'https://pokeapi.co/api/v2/pokemon/'

    # def unique_url(pokemon_number)
    #     response = HTTParty.get("#{API_URL}#{pokemon_number}")
    #     json = JSON.parse(response.body)
    # end

# def initialize(url="https://quote-garden.herokuapp.com/api/v3/genres")
#     @URL = url 
#     get_info
# end

# def get_info
#     uri = URI.parse(@URL)
#     response = Net::HTTP.get_response(uri)
#     response.body
# end

# def parse_json_categories
#     info = get_info
#     JSON.parse(info)["data"].each { |genre| Genre.new(genre) }
# end

# def parse_json_quote
#     info = get_info
#     JSON.parse(info)["data"].sample(1)
# end