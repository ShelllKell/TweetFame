class WelcomeController < ApplicationController

  def index
    @tweet_reader = TweetReader.new
    @others_tweets = @tweet_reader.anyones_tweets(params[:username])
  end

end
