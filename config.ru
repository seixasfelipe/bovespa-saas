require './app'

ENV['RACK_ENV'] ||= "development"

run BovespaSaas::App