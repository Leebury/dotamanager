class TeamsController < ApplicationController

	def index
		@teams = Team.all
	end

	def show
		@team = Team.find(params[:id])
	end

	def edit
		@team = Team.find(params[:id])
	end

	def update
		@team = Team.find(params[:id])
		@team.update(team_params)
		redirect_to @team
	end

	def new
		@team = Team.new
	end

	def create
		@team = Team.new(team_params)
		@team.user_id = current_user.id
		@team.save
		redirect_to @team
	end

	def destroy
		@team = Team.find(params[:id])
		@team.destroy
		redirect_to teams_path
	end


	private
	    # Never trust parameters from the scary internet, only allow the white list through.
	    def team_params
			params.require(:team).permit(:team_name, :player_names, :wins, :losses)
	    end



end