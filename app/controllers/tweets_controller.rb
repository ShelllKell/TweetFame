class TweetsController < ApplicationController

  def index
    @tweet_reader = TweetReader.new
    @username =  params[:username] || "shelllkell"
    @tweets = @tweet_reader.tweets(@username)

    if params[:status].present?
      @my_tweet = @tweet_reader.tweet_tweet(params[:status])
    end

    render json: { tweets: @tweets, mine: @my_tweet, username: @username }
  end
end
