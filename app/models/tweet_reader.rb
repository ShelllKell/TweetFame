class TweetReader

  def initialize
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = Rails.application.secrets.consumer_key
      config.consumer_secret     = Rails.application.secrets.consumer_secret
      config.access_token        = Rails.application.secrets.access_token
      config.access_token_secret = Rails.application.secrets.access_token_secret
    end
  end

  def shelbys_tweets
    @client.user_timeline("shelllkell")
  end

  def anyones_tweets(username)
    @client.user_timeline(username)
  end

  def tweet_tweet(status)
    @client.update(status)
  end

  def my_followers
    @client.followers("shelllkell")
  end

end
