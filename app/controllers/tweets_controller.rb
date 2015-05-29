class TweetsController < ApplicationController

  def index
    @tweet_reader = TweetReader.new
    @tweets = @tweet_reader.tweets(params[:username] || "shelllkell")

    if params[:status].present?
      @my_tweet = @tweet_reader.tweet_tweet(params[:status])
    end

    render json: { tweets: @tweets, mine: @my_tweet }
  end
end
