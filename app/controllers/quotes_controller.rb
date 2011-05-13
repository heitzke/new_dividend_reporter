class QuotesController < ApplicationController
  def new
    yahoointegrator = YahooIntegrator.new
    yahoointegrator.run
  end
end
