class TweetsController < ApplicationController
  
  def index
    tweets = Tweet.all
    render json: tweets
  end

  def create
    tweet = Tweet.new(
      user_id: params[:user_id],
      tweet: params[:tweet]
    )
    if tweet.save
      render json: tweet
    else
      render json: {errors: tweet.errors.full_messages}
    end
  end

  def show
    tweet = Tweet.find(params[:id])
    render json: tweet
  end

  def update
    tweet = Tweet.find(params[:id])
    tweet.user_id = params[:user_id] || tweet.user_id
    tweet.tweet = params[:tweet] || tweet.tweet
    if tweet.save
      render json: tweet
    else
      render json: {errors: tweet.errors.full_messages}
    end
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    render json: {message: "tweet has been obliterated"}
  end

end
