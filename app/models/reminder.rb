class Reminder < ActiveRecord::Base
  
  scope :next_hour, where(:time => (Time.zone.now)..(Time.zone.now + 3600)).where('processed != ?', true)
  scope :next_day, where(:date => 1.day.from_now.to_date).where(:time => nil).where('processed != ?', true)
  
end

# == Schema Information
#
# Table name: reminders
#
#  id         :integer         not null, primary key
#  date       :date
#  time       :datetime
#  title      :text
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

