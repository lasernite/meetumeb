class CommentsController < ApplicationController
 
 def create
   @micropost = Micropost.find(params[:micropost_id])
    @comment = @micropost.comments.create!(params[:comment])
    redirect_to @micropost
    respond_to do |format|
  end

 
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
  end
end
