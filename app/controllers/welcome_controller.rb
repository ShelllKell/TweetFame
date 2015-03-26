class WelcomeController < ApplicationController

  def index
    @tweet_reader = TweetReader.new
      if params[:username]
        @others_tweets = @tweet_reader.anyones_tweets(params[:username])
      else
        @others_tweets = @tweet_reader.shelbys_tweets
      end

    if params[:status].present?
      @my_tweet = @tweet_reader.tweet_tweet(params[:status])
    end
  end

end
