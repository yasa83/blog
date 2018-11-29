class TweetsController < ApplicationController

  before_action :move_to_index, except: :index
  def index
    @tweets = Tweet.all.order("created_at DESC").page(params[:page]).per(5)
  end

  def new
  end

  def create
    Tweet.create(title: tweet_params[:title], text: tweet_params[:text])
  end


  private
  def tweet_params
    params.permit(:title, :text)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
