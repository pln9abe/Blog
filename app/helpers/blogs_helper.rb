module BlogsHelper
  def teaser(blog)
    blog.body.first(50).concat("...")
  end
end
