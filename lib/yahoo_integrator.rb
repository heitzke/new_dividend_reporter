class YahooIntegrator
  attr_accessor :stocks, :quotes

  def initialize(options={})
    @stocks = options[:stocks]
  end

  def run
    get_latest_quotes @stocks
    save_quotes @quotes
  end

protected
  def get_latest_quotes(stocks)
    # This should hit YahooFinance api and get the quote info
    @quotes = YahooFinance.get_standard_quotes(stocks)
  end

  def save_quotes(quotes) 
    # This should create new entries for the quotes
    quotes.each do |quote|
      Quote.create(:dividend_pay_date => dividendPayDate, )
    end
  end
end
