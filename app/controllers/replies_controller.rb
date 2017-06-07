class RepliesController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments
		@reply = @comment.create(reply_params)
		redirect_to post_path(@post)
	end

	def destroy
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		@reply = @comment.replies.find(params[:id])
		@reply.destroy
		redirect_to post_path(@post)
	end 

	private
		def reply_params
			params.require(:reply).permit(:replier, :body)
		end 
end
