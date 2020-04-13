class CommentsController < ApplicationController
	def index 
		comment = Comment.all 
		render json: comment
	end

	def create
		
		comment = Comment.create(user_id: 24, post_id: 27, content:params[:content])
	end

	def show
		comment = Comment.find(params[:id])
		render json: comment
	end

	def destroy
		comment = Comment.find(params[:id])
		comment.delete
	end
end
