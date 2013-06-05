require 'sinatra/base'
require 'sinatra/activerecord'

module BovespaSaas

  module Models
    class Stock < ActiveRecord::Base
      self.table_name = "stock_quotes"
    end
  end

  class App < Sinatra::Base

    register Sinatra::ActiveRecordExtension
    set :database, "sqlite3:///db/#{ENV['RACK_ENV']}.sqlite3.db"

    get '/' do
      # puts Models::Stock.all.first.codigo
      "It works!"
    end

    get '/stock/:stock/:year/:month/:day' do
      date        = Date.new(params[:year].to_i, params[:month].to_i, params[:day].to_i)
      stock_code  = params[:stock]
      stock = Models::Stock.where(:ticker_symbol => stock_code.upcase, :date => date).first

      unless stock.nil?
        { 
          ticker_symbol: stock.ticker_symbol,
          opening_price: stock.opening_price
        }.to_json 
      else
        404
      end
    end

    after do
      # after route
    end
  end

end