class PokemonsController < ApplicationController
    before_action :require_logged_in

    def new
        @pokemon = Pokemon.new
    end

    def index
        if !params[:user_id]
            @pokemons = current_user.pokemons.all 
            @pokemon_user = @pokemons.first.user.name if current_user.pokemons.all.count > 0
            @all_types = current_user.pokemons.distinct.pluck(:poke_type) 
        else
            @user = current_user
            @pokemons = User.find(params[:user_id]).pokemons.all
            @all_types = User.find(params[:user_id]).pokemons.distinct.pluck(:poke_type)
        end
    end

    def create
        begin
            new_pokemon = Pokemonapi.new(params[:species])
            @pokemon = Pokemon.create(:species => new_pokemon.info["name"], :nickname => params[:name], :poke_type => new_pokemon.info["types"][0]["type"]["name"], :level => 1, :sprite => new_pokemon.info["sprites"]["front_default"], :user_id => current_user.id)
            if @pokemon.valid?
                @pokemon.save
                redirect_to pokemon_path(@pokemon)
            end
        rescue JSON::ParserError
            flash.now[:messages] = "Please enter a valid Pokemon name."
            render :new
        rescue NoMethodError
            flash.now[:messages] = "Please enter a valid Pokemon name."
            render :new
        end
    end

    def show
        @pokemon = Pokemon.find(params[:id])
        @professor_buy_price = @pokemon.level * 100
    end

    def show_pokemon_type
        @all_types = current_user.pokemons.distinct.pluck(:poke_type)
        @pokemons = current_user.pokemons.get_pokemon_by_type(params[:type])
    end

    def search_for_pokemon
        new_pokemon = Pokemonapi.new(rand(1..898))
        @pokemon_species = new_pokemon.info["name"]
        @pokemon_level = rand(1..99)
        @pokemon_sprite = new_pokemon.info["sprites"]["front_default"]
        @pokemon_type = new_pokemon.info["types"][0]["type"]["name"]

        #pokeball access
        @items = current_user.items
        @user_items = UserItem.where(:user_id => @user.id)
        @quantities = {}
        @user_items.each do |item|
            @quantities[:"#{item.item_id}"] = item.quantity
        end
        #render json: @user_items, only: [:item_id, :quantity]
    end

    def capture
        @pokemon = Pokemon.create(:species => params[:species].keys[0], :nickname => params[:nickname], :poke_type => params[:poke_type].keys[0], :level => params[:level].keys[0], :sprite => params[:sprite].keys[0], :user_id => current_user.id)
        if @pokemon.valid?
            @pokemon.save
            money = current_user.money += (params[:level].keys[0].to_i*15)
            current_user.update(:money => money)
            redirect_to pokemon_path(@pokemon)
        else
            flash.now[:messages] = "Please enter a valid Pokemon name."
            render :new
        end
    end

    def edit
        @pokemon = Pokemon.find(params[:id])
        if @pokemon.user.id != current_user.id
            redirect_to pokemons_path
        end
    end

    def update
        @pokemon = Pokemon.find(params[:id])
        if @pokemon.user.id == current_user.id
            @pokemon.update(nickname: params[:pokemon][:nickname])
            redirect_to pokemon_path(@pokemon)
        end
    end

    def destroy
        @pokemon = Pokemon.find(params[:id])
        if @pokemon.user.id == current_user.id
            money = current_user.money + (@pokemon.level * 100)
            current_user.update(:money => money)
            @pokemon.destroy
            redirect_to pokemons_path
        end
    end

    private

    def pokemon_params
        params.require(:pokemon).permit(*args)
    end

end
