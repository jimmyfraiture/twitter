class TweetsController < ApplicationController
  before_action :set_tweet, only: [:show, :update, :destroy, :edit]

  def index
  end

  def create
    @user = User.find params[:user_id]
    @tweet = @user.tweets.new(tweet_params)

    if @tweet.save
      redirect_to user_path(@tweet.user)
    else
      render 'create'
    end
  end

  def new
    @user = User.find params[:user_id]
    @tweet = @user.tweets.new
  end

  def edit 
    @user = @tweet.user
  end

  def show
  end

  def update
    Tweet.update(@tweet.id, tweet_params)

    redirect_to users_path
  end

  def destroy
    Tweet.destroy(@tweet.id)


    redirect_to users_path
  end

  private

  def tweet_params
    params.require(:tweet).permit(:id, :user_id, :message)
  end

  private

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end
end
