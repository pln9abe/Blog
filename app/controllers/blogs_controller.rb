class BlogsController < ApplicationController
 before_action :set_blog, only: [:destroy, :show, :edit, :update]

 def index
   @blogs = Blog.all
 end

 def show  
 end

 def new
   @blog = Blog.new
 end

 def create
   @blog = Blog.new(blog_params)
   if @blog.save
      redirect_to blogs_path
   else
      render :new
   end
 end

 def edit
 end

 def update
    if @blog.update(blog_params)
       redirect_to blogs_path
    else
       render :edit
    end
 end

 def destroy
    if @blog.destroy
       redirect_to blogs_path
    end
 end

 private
 def blog_params
    params.require(:blog).permit(:title, :body)
 end

 def set_blog
    @blog = Blog.find(params[:id])
 end
end
