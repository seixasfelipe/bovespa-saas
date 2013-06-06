require 'spec_helper'

describe 'Bovespa SaaS App' do

  let(:complete_stock) {
    { "average_price"=>"103.68",
      "best_purchase_price"=>"103.21",
      "best_sell_price"=>"104.38", 
      "close_price"=>"103.21", 
      "currency_ref"=>"R$", 
      "date"=>"2003-02-12", 
      "highest_price"=>"105.01", 
      "lowest_price"=>"102.5", 
      "name"=>"VALE R DOCE", 
      "opening_price"=>"105.01", 
      "specification"=>"ON", 
      "ticker_symbol"=>"VALE3", 
      "total_trading"=>"142.0", 
      "total_trading_share"=>"69500.0", 
      "trading_volume"=>"720641400.0"
    }
  }

  it "works for me" do
    get '/'
    last_response.should be_ok
    last_response.body.should == "It works!"
  end

  it "should gets one day stock quote prices" do
    get '/stock/VALE3/2003/02/12'
    last_response.should be_ok
    JSON.parse(last_response.body).should == complete_stock
  end

  it "should gets 404 when stock (ticker symbol) doesnt exists" do
    get '/stock/foradun/2000/01/01'
    last_response.should be_not_found
  end

  it "should gets 404 when stock date doesnt exists" do
    get '/stock/VALE3/2004/12/25'
    last_response.should be_not_found
  end

  it "should not gets 404 when stock is not upcase" do
    get 'stock/vale3/2003/02/12'
    last_response.should be_ok
    JSON.parse(last_response.body).should == complete_stock
  end

end