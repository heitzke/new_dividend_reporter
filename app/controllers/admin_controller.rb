class AdminController < ApplicationController
  def index
    @stocks = Stock.all
  end

  def update_quotes
    x = YahooIntegrator.new
    ticker_array = []
    stocks = Stock.all
    stocks.each do |stock|
      ticker_array.push(stock.ticker)
    end
    if x.get_quotes(ticker_array)
      flash[:notice] = "All quotes successfully updated"
      redirect_to admin_panel_path
    else
      flash.now[:error] = "Unable to update quotes"
      redirect_to admin_panel_path
    end
  end

  def remove_stock
    if Stock.find(params[:id]).destroy
      flash[:notice] = "Stock successfully removed"
      redirect_to admin_panel_path
    else
      flash.now[:error] = "Unable to remove stock"
      redirect_to admin_panel_path
    end
  end

  def add_stock
    stock = Stock.new
    x = YahooIntegrator.new
    x.get_quotes [params[:ticker]]
    stock.save
    redirect_to admin_panel_path
  end
end
