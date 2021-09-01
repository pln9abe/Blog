class CommentsController < ApplicationController
   before_action :set_blog

   def create
      @comment = @blog.comments.new(comment_params)
      @comment.user = current_user
      @comment.save
      redirect_to blog_path(@blog)
   end

   private
   def comment_params
      params.require(:comment).permit(:body, :blog_id)
   end

   def set_blog
      @blog = Blog.find(params[:blog_id])
   end
end
