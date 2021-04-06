class CreatePokemonTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemon_teams do |t|
      t.integer :user_id
      t.integer :pokemon_id

      t.timestamps
    end
  end
end
