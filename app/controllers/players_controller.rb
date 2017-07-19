class PlayersController < ApplicationController

	def index
		@players = Player.all
	end

	def show
		@player = Player.find(params[:id])
	end

	def edit
		@player = Player.find(params[:id])
	end

	def update
		# @player = Player.find(params[:id])
		# @player.team_id = params[:team_name][:team_id]
		# @player.update(player_params)
		# redirect_to @player

		if params[:team_name][:team_id] != nil 
			@player = Team.find(params[:team_name][:team_id]).players.create!(player_params)
		else
			@player = Player.create!(player_params)
		end

		redirect_to @player
	end

	def new
		@player = Player.new
	end

	def create
		
		if params[:team_name][:team_id] != "" 
			@player = Team.find(params[:team_name][:team_id]).players.create!(player_params)
		else
			@player = Player.create!(player_params)
		end

		redirect_to @player

	end

	def destroy
		@player = Player.find(params[:id])
		@player.destroy
		redirect_to players_path
	end


	private
	    # Never trust parameters from the scary internet, only allow the white list through.
	    def player_params
			params.require(:player).permit(:player_name, :preferred_role, :most_played_heroes, :average_gpm, :average_exp)
	    end


end





