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
		@player = Player.find(params[:id])
		@player.update(player_params)
		redirect_to @player
	end

	def new
		@player = Player.new
	end

	def create
		@player = Player.new(player_params)
		@player = params[:team_name][:team_id]
		@player.save
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





