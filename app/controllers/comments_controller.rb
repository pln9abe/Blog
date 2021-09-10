class CommentsController < ApplicationController

  def create
    @comment = @commentable.comments.new(comment_params)
    @comment.user = current_user
    @comment.save
    redirect_to @commentable
  end

  def destroy
    @comment = @commentable.comments.find(params[:id])
    if @comment.destroy
      redirect_to @commentable
    end
  end

  private
  def comment_params
  end

  def comment_params
    params.require(:comment).permit(:body)
  end

end
