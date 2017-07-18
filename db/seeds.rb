# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



user1 = User.create!({
	email: 'example@example.com',
	password: 'example',
	encrypted_password: 'example',
	sign_in_count: 0,
})

team1 = Team.create!({
	team_name: "Fearless Wombats",
    player_names: "Lee, Max, Jon, Slith, Arron",
    user_id: user1.id,
    wins: 100,
    losses: 50
})

player1 = Player.create!({

	player_name: "Lee",
	team_id: team1.id,
	preferred_role: "Support",
	most_played_heroes: "Earthshaker, Rubick, Crystal Maiden",
	average_gpm: 467,
	average_exp: 400
})

player2 = Player.create!({
	player_name: "Max",
	team_id: team1.id,
	preferred_role: "Carry",
	most_played_heroes: "Anti-mage, Faceless void, Meepo",
	average_gpm: 867,
	average_exp: 700
})


player3 = Player.create!({
	player_name: "Jon",
	team_id: team1.id,
	preferred_role: "Ganker",
	most_played_heroes: "Bounty hunter, Io, Spirit breaker",
	average_gpm: 532,
	average_exp: 522
})





# team1.teams.push team1
# team1.teams.push player1
# team1.teams.push player3
# team1.teams.push player3
# team1.save

# player1.players.push player1
# player1.save

# player2.players.push player2
# player2.save

# player3.players.push player3
# player3.save

 