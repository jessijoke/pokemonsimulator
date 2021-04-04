class CreatePokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.string :species
      t.string :nickname
      t.integer :level
      t.integer :experience
      t.string :sprite
      t.string :type
      t.integer :user_id
      t.integer :pokemon_team_id

      t.timestamps
    end
  end
end
