require 'spec_helper'

describe TextMsgsController do

  describe "POST 'create'" do
    
    it "should accept valid attributes and create a text message" do
      post :create, :text_msg => {:Body => "visit doctor on july 4 at 10 am", :From => "+17036691559"}
      assigns[:text_msg].Body.should == "visit doctor on july 4 at 10 am"
      Request.last.phrase.should == "visit doctor on july 4 at 10 am"
      Reminder.last.title.should == "visit doctor"
    end
    
  end

end
