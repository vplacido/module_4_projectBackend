class PostsController < ApplicationController
	def index 
		post = Post.all 
		render json: post
	end


	def new
		
	end
	def create
		# user = User.find(params[:id])
		post = Post.create(user_id: 22, img:params[:img], content:params[:content])
		
	end

	def show
		post = Post.find(params[:id])
		render json: post
	end

	def destroy
		post =Post.find(params[:id])
		post.delete
	end
end
