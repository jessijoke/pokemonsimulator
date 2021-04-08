class RemoveUserIdFromPokemonTeamsAddTeamId < ActiveRecord::Migration[6.1]
  def change
    remove_column :pokemon_teams, :user_id
    add_column :pokemon_teams, :team_id, :integer
  end
end
