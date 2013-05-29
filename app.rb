require 'sinatra/base'
require 'sinatra/activerecord'

module BovespaSaas

  module Models
    class Stock < ActiveRecord::Base
      self.table_name = "ativos"
    end
  end

  class App < Sinatra::Base

    register Sinatra::ActiveRecordExtension
    set :database, "sqlite3:///development.sqlite3.db"

    get '/' do
      # puts Models::Stock.all.first.codigo
      'It works!'
    end

    get '/stock/:stock/:year/:month/:day' do
      date        = Date.new(params[:year].to_i, params[:month].to_i, params[:day].to_i)
      stock_code  = params[:stock]
      stock = Models::Stock.where(:codigo => stock_code, :data => date).first

      unless stock.nil?
        { 
          codigo: stock.codigo,
          preco_abertura: stock.preco_abertura
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