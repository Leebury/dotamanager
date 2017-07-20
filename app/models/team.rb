class Team < ApplicationRecord

	belongs_to :user
	# has_many :players
	mount_uploader :logo, ImageUploader
	has_many :player_teams
	has_many :players, through: :player_teams

end