class TweetsController < ApplicationController
   before_action :set_tweet, only: [:destroy, :show, :edit, :update]
   def index
     @tweets = Tweet.all
     @comment = Comment.new
   end

   def new
      @tweet = Tweet.new
   end

   def create
      @tweet = Tweet.new(tweet_params)
      @tweet.user_id = current_user.id
      if @tweet.save
         redirect_to tweets_path
      else
         render :new
      end
   end

   private
   def tweet_params
      params.require(:tweet).permit(:body)
   end

   def set_tweet
      @tweet = Tweet.find(params[:id])
   end
end
