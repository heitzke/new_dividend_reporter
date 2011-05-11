class StocksController < ApplicationController
  def new
  end

  def index
    @stocks = Stock.all
  end

  def show
    @stock = Stock.find(params[:id])
  end

  def watch
    @stock = Stock.find(params[:id])

    UserStockWatches.create(:stock_id => @stock.id, :user_id => 1)
    redirect_to '/'
  end
end
