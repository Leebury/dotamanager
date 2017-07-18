class CreateTeam < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.belongs_to :user, index: true
      t.string :team_name
      t.string :player_names

      t.integer :wins
      t.integer :losses
    end
  end
end
