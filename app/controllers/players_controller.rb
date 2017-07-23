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


		# @team = Team.find(params[:team_name]['team_id'])
		# @player = @team.find(params[:id])
		# byebug
		@player = Player.find(params[:id])
		@player.update_attributes(player_params)
		
		@player.teams.delete_all

		if params[:team_name]['team_id'] != nil || params[:team_name]['team_id'] != ''	
			PlayerTeam.create!(player_id: @player.id, team_id: params[:team_name]['team_id'])
		end


		redirect_to '/players'
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

		redirect_to '/players'

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





