class CreatePlayer < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      # t.belongs_to :team, index: true	
      t.string :player_name
      t.string :preferred_role
      t.string :most_played_heroes
      t.integer :average_gpm
      t.integer :average_exp
    end
  end
end
