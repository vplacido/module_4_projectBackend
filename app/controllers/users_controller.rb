class UsersController < ApplicationController
	def index 
		user = User.all 
		# byebug
		render json: user
	end

	def new
		user = User.new
	end

	def create
		user = User.create(username: params[:username], password: params[:password], description: params[:description], profile_img: nil)
	end
	def show
		user = User.find(params[:id])
		render json: user
	end

	
end
