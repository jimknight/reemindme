require 'spec_helper'

describe GoogleApi do
  it "should create an event" do
    response = GoogleApi.create_event
    response.status.should == 200
  end
end