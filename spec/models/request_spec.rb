require 'spec_helper'

describe Request do
  it "should create an event given a simple phrase" do
    Request.create!(:phrase => "go to the doctor on july 7 at 9 am")
    Reminder.last.title.should == "go to the doctor"
    Reminder.last.date.should == "2012-07-07".to_date
    Reminder.last.time.should == "2012-07-07 9:00 AM EDT".to_time
  end
end
