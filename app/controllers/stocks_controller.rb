class StocksController < ApplicationController
  def new
    @stock = Stock.create
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
    else
      flash[:error] = "There was a problem add the stock to your watchlist"
      redirect_to root_path
    end
  end
end
