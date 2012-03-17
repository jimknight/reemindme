require 'spec_helper'

describe Request do
  it "should create an event given a simple phrase" do
    Request.create!(:phrase => "go to the doctor on july 7 at 9 am")
    Reminder.last.title.should == "go to the doctor"
    Reminder.last.date.should == "2012-07-07".to_date
    Reminder.last.time.should == "2012-07-07 9:00 AM EDT".to_time
  end
  it "should create an event without a time" do
    Request.create!(:phrase => "buy some green pants at Kohls on saturday")
    Reminder.last.date.should == Chronic.parse("this saturday").to_date
  end
end

# == Schema Information
#
# Table name: requests
#
#  id         :integer         not null, primary key
#  phrase     :text
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

