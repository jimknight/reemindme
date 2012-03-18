require 'spec_helper'

describe Reminder do
  describe "description" do
    it "should grab next hour's reminders" do
      @reminder1 = Reminder.create!(:title => "tomorrow", :date => 1.day.from_now.to_date, :time => 1.day.from_now)
      @reminder2 = Reminder.create!(:title => "tomorrow", :date => 1.day.from_now.to_date, :time => 1.day.from_now)
      @reminder3 = Reminder.create!(:title => "today", :date => 59.minutes.from_now.to_date, :time => 59.minutes.from_now)
      Reminder.next_hour.size.should == 1
    end
  end
end