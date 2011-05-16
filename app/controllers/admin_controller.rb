class AdminController < ApplicationController
  def index
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

end
