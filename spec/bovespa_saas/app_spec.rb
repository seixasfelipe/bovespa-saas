require 'spec_helper'

describe 'The HelloWorld App' do

  it "works for me" do
    get '/'
    last_response.should be_ok
    last_response.body.should == "It works!"
  end

end