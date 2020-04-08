class CommentsController < ApplicationController
	def index 
		comment = Comment.all 
		render json: comment
	end

	def show
		comment = Comment.find(params[:id])
		render json: comment
	end
end
