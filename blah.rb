def get_quotes stock_array
  yahoo_hash = YahooFinance.get_standard_quotes stock_array
    yahoo_hash.keys.each do |x|
      stock = stock.find_by_ticker x
      quote = Quote.new :stock_id => stock.id
      quote.update_attributes(  :ex_dividend_date     =>   yahoo_hash[x].exDividendDate,
                                :dividend_pay_date    =>   yahoo_hash[x].dividendPayDate,
                                :dividend_yield       =>   yahoo_hash[x].dividendYield,
                                :dividends_per_share  =>   yahoo_hash[x].dividendPerShare,
                                :last_price           =>   yahoo_hash[x].lastTrade )
      quote.save
    end
end

