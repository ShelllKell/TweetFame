class WelcomeController < ApplicationController

  def index
    @tweet_reader = TweetReader.new
    @others_tweets = @tweet_reader.anyones_tweets(params[:username])

    if params[:status].present?
      @my_tweet = @tweet_reader.tweet_tweet(params[:status])
    end
  
  end

end
