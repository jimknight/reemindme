require 'spec_helper'

describe Reminder do
  before(:each) do
    @reminder1 = Reminder.create!(:title => "tomorrow", :date => 1.day.from_now.to_date, :time => 1.day.from_now)
    @reminder2 = Reminder.create!(:title => "tomorrow", :date => 1.day.from_now.to_date, :time => 1.day.from_now)
    @reminder3 = Reminder.create!(:title => "today", :date => 59.minutes.from_now.to_date, :time => 59.minutes.from_now)
  end
  it "should grab next hour's reminders" do
    Reminder.next_hour.size.should == 1
  end
  it "should find next day's all day reminders" do
     @reminder1.update_attributes(:time => nil)
     @reminder2.update_attributes(:time => nil)
     @reminder3.update_attributes(:time => nil)
     Reminder.next_day.size.should == 2
  end
  it "should not include already processed reminders" do
     Reminder.next_hour.size.should == 1
     @reminder3.update_attributes(:processed => true)
     Reminder.next_hour.size.should == 0
  end
end