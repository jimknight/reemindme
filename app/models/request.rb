class Request < ActiveRecord::Base
  
  before_save :create_event
  
private

  def convert_raw_time(raw_time)
    raw_time.gsub(/(.{2})(?=.)/, '\1:\2') # 090000 = 09:00:00
  end

  def create_event
    parsed_response = Nickel.parse(phrase)
    date_str = parsed_response.occurrences.first.start_date.date
    time_str = convert_raw_time(parsed_response.occurrences.first.start_time.time)
    Reminder.create!(
      :title => parsed_response.message,
      :date => date_str.to_date,
      :time => "#{date_str} #{time_str} EDT".to_time
    )
  end
  
end
