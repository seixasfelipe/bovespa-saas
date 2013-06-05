require 'spec_helper'

describe 'Bovespa SaaS App' do

  it "works for me" do
    get '/'
    last_response.should be_ok
    last_response.body.should == "It works!"
  end

  it "should gets one day stock quote prices" do
    get '/stock/VALE3/2003/02/12'
    last_response.should be_ok
    last_response.body.should == '{"ticker_symbol":"VALE3","opening_price":"105.01"}'
  end

  it "should gets 404 when stock (ticker symbol) doesnt exists" do
    get '/stock/foradun/2000/01/01'
    last_response.should be_not_found
  end

  it "should gets 404 when stock date doesnt exists" do
    get '/stock/VALE3/2004/12/25'
    last_response.should be_not_found
  end

end