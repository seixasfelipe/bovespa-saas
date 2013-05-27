require 'sinatra/base'

module BovespaSaas

  class App < Sinatra::Base

    get '/' do
      'Hello world! It works!'
    end
  end

end