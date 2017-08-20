class GroupsController < ApplicationController
	def index
		@groups = Group.all
	end

	def new
		@group = Group.new
	end

	def create
		@group = Group.new(group_params)
		@group.save

		redirect_to groups_path
	end

	def show
		@group = Group.find(params[:id])
	end

	def update
		@group = Group.find(params[:id])
		@group.update
		redirect_to groups_path
	end

	def dertroy
		@group = Group.find(params[:id])
		@group.delete
		redirect_to groups_path
	end

	private

	def group_params
		params.require(:group).permit(:title, :description)
	end

end
