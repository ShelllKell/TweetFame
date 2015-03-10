class WelcomeController < ApplicationController

  def index
    @tweet_reader = TweetReader.new
    @others_tweets = @tweet_reader.anyones_tweets(params[:username])
    @my_tweet = @tweet_reader.tweet_tweet(params[:status])
  end

end
