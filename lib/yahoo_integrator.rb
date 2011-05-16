class YahooIntegrator
  attr_accessor :stocks, :quotes
  def get_quotes stock_array
    yahoo_hash = YahooFinance.get_standard_quotes stock_array
    yahoo_hash.keys.each do |ticker|
      stock = Stock.find_by_ticker ticker
      quote = Quote.new :stock_id => stock.id
      quote.update_attributes(    :ex_dividend_date       =>   yahoo_hash[ticker].exDividendDate,
                                  :dividend_pay_date      =>   yahoo_hash[ticker].dividendPayDate,
                                  :dividend_yield         =>   yahoo_hash[ticker].dividendYield,
                                  :dividends_per_share    =>   yahoo_hash[ticker].dividendPerShare,
                                  :last_price             =>   yahoo_hash[ticker].lastTrade )
      quote.save
    end
  end
end
