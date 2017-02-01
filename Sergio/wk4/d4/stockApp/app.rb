require 'yahoofinance'
require "sinatra"
require "sinatra/reloader"
require "pry"
require "json"

get "/" do
  @stock_code = params[:stock]
  @result = {}
  if @stock_code
    @result = YahooFinance::get_quotes(YahooFinance::StandardQuote, @stock_code)
  end
  # @change = @result[stock].change
  # @date = @result[stock].date
  # @day_range = @result[stock].dayRange
  # binding.pry
  erb :index
end
