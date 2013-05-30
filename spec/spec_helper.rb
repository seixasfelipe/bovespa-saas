ENV['RACK_ENV'] = "test"

require './app'
def app
  BovespaSaas::App
end

require 'rspec'
require 'rack/test'
RSpec.configure do |conf|
  conf.include Rack::Test::Methods
end