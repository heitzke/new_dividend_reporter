class YahooIntegrator
  attr_accessor :stocks, :quotes
  def get_quotes stock_array
    yahoo_hash = YahooFinance.get_standard_quotes stock_array
    yahoo_hash.keys.each do |ticker|
      if Stock.find_by_ticker ticker
        stock = Stock.find_by_ticker ticker
      else
        stock = Stock.new
      end
      quote = Quote.new
      stock.update_attributes(    :company_name           =>   yahoo_hash[ticker].name,
                                  :ticker                 =>   yahoo_hash[ticker].symbol )
      quote.update_attributes(    :ex_dividend_date       =>   yahoo_hash[ticker].exDividendDate,
                                  :dividend_pay_date      =>   yahoo_hash[ticker].dividendPayDate,
                                  :dividend_yield         =>   yahoo_hash[ticker].dividendYield,
                                  :dividends_per_share    =>   yahoo_hash[ticker].dividendPerShare,
                                  :last_price             =>   yahoo_hash[ticker].lastTrade,
                                  :stock_id               =>   stock.id )

    end
  end
end
