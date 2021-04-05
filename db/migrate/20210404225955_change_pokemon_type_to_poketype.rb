class ChangePokemonTypeToPoketype < ActiveRecord::Migration[6.1]
  def change
    remove_column :pokemons, :type
    add_column :pokemons, :poke_type, :string
  end
end
