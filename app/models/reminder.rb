class Reminder < ActiveRecord::Base
  
  scope :next_hour, where(:time => (Time.zone.now)..(Time.zone.now + 3600))
  
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

