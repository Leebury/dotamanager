class TeamsController < ApplicationController

	def index
		@teams = Team.all
	end

	def show
		@team = Team.find(params[:id])
	end

	def edit
	end

	def update
	end

	def new
		@team = Team.new
	end

	def create
		puts params
		@team = Team.new(team_params)
		@team.save
		redirect_to @team
	end

	def destroy
	end


	private
	    # Never trust parameters from the scary internet, only allow the white list through.
	    def team_params
			params.require(:team).permit(:team_name, :player_names, :wins, :losses)
	    end



end