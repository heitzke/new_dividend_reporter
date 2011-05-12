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
    if current_user
      @user = current_user
      @stock = Stock.find(params[:id])
      UserStockWatch.create(:stock_id => @stock.id, :user_id => @user.id)
      redirect_to '/'
    else
      render 'pages/must_be_logged_in'
    end
  end
end
