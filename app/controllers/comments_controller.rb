class CommentsController < ApplicationController
	def index 
		comment = Comment.all 
		render json: comment
	end

	def create
		
		comment = Comment.create(user_id: params[:user_id], post_id: params[:post_id], content:params[:content])
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
