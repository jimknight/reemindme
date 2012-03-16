require 'spec_helper'

describe TextMsg do
  before(:each) do
    @attr = {:AccountSid =>"AC87653a7d30727704b06a303e73785b60", :Body =>"Coralook shiraz 2007", :ToZip=>"28562",
             :FromState=>"VA", :ToCity=>"NEW BERN", :SmsSid=>"SMa2d5c184c05143eebd0f787f0c3e5c9a", :ToState=>"NC",
             :To=>"+12527729466", :ToCountry=>"US", :FromCountry=>"US", 
             :SmsMessageSid=>"SMa2d5c184c05143eebd0f787f0c3e5c9a", :ApiVersion=>"2010-04-01", :FromCity=>"LEESBURG", 
             :SmsStatus=>"received", :From=>"+17036691559", :FromZip=>"20175"}
  end
  it "should accept the twillio parameters and create a row in the db" do
    @text_msg = TextMsg.new(@attr)
    @text_msg.should be_valid
  end
  it "should accept Matt's parameters and create a new text message" do
    @attr_matt = {
      :AccountSid	  => "AC87653a7d30727704b06a303e73785b60",
      :Body	        => "Lil red penguin",
      :ToCity	      => "NEW BERN",
      :FromState	    => "MD",
      :ToZip	        => "28562",
      :ToState	      => "NC",
      :SmsSid	      => "SMf8753a57a67353a899937a7e3ab301cb",
      :To	          => "+12527729466",
      :ToCountry	    => "US",
      :FromCountry	  => "US",
      :SmsMessageSid	=> "SMf8753a57a67353a899937a7e3ab301cb",
      :ApiVersion	  => "2010-04-01",
      :FromCity	    => "COLUMBIA",
      :SmsStatus	    => "received",
      :From	        => "+14435388656",
      :FromZip	      => "21044"
    }
    @text_msg = TextMsg.new(@attr_matt)
    @text_msg.should be_valid
  end
end
