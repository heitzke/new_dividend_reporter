class StocksController < ApplicationController
  def new
  end

  def index
    @stocks = Stock.all
  end

  def show
  end
end
