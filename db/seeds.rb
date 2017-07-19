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

team2 = Team.create!({
	team_name: "Nialls Beasts",
    player_names: "Lee, Steph, Omar, Fane, Anna, Joe, Jenny",
    user_id: user1.id,
    wins: 700,
    losses: 40
})

player1 = Player.create!({
	player_name: "Lee",
	preferred_role: "Support",
	most_played_heroes: "Earthshaker, Rubick, Crystal Maiden",
	average_gpm: 467,
	average_exp: 400
})

player2 = Player.create!({
	player_name: "Max",
	preferred_role: "Carry",
	most_played_heroes: "Anti-mage, Faceless void, Meepo",
	average_gpm: 867,
	average_exp: 700
})


player3 = Player.create!({
	player_name: "Jon",
	preferred_role: "Ganker",
	most_played_heroes: "Bounty hunter, Io, Spirit breaker",
	average_gpm: 532,
	average_exp: 522
})

PlayerTeam.create({
	player_id: player1.id,
	team_id: team1.id
})

PlayerTeam.create({
	player_id: player2.id,
	team_id: team2.id
})

PlayerTeam.create({
	player_id: player3.id,
	team_id: team2.id
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

 