class Reminder < ActiveRecord::Base
  
  scope :next_hour, where(:time => (Time.now)..(1.hour.from_now))
  
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

