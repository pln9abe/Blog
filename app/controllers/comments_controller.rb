class CommentsController < ApplicationController
   before_action :set_blog

   def create
      @comment = @commentable.comments.new(comment_params)
      @comment.user = current_user
      @comment.save
      redirect_to @commentable
   end

   private
   def comment_params
      params.require(:comment).permit(:body)
   end

   def set_blog
      @blog = Blog.find(params[:blog_id])
   end
end
