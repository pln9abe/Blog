class Tweets::CommentsController < CommentsController
   before_action :set_commentable

   private
   def set_commentable
      @commentable = Tweet.find(params[:tweet_id])
   end
end
