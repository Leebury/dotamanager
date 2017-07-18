class TeamsController < ApplicationController

	def index
	end

	def show
	end

	def edit
	end

	def update
	end

	def new
		@team = Team.new
	end

	def create
		@team = Team.new(team_params)
		@team.save
		redirect_to @team
	end

	def destroy
end


end