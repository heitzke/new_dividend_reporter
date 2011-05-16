class StocksController < ApplicationController
  #before_filter :must_be_logged_in, :only => [:watch]
  def new
    @stock = Stock.new
  end

  def index
    @stocks = Stock.all
  end

  def show
    @stock = Stock.find(params[:id])
  end

  def watch
    if current_user && stock = Stock.find(params[:id])
      current_user.watch stock
      redirect_to '/'
    elsif !current_user
      render 'pages/must_be_logged_in'
    else
      flash[:error] = "There was a problem add the stock to your watchlist"
      redirect_to root_path
    end
  end
end
