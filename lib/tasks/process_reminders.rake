task :process_reminders => :environment do
  
  # Time events
  Reminder.next_hour.each do |reminder|
    if reminder.time
      message = "#{reminder.title} at #{pretty_time(reminder.time)} on #{reminder.date}"
    else
      message = "#{reminder.title} on #{reminder.date}"
    end
    puts message if Rails.env == "development"
    Notify.send_text(message)
    reminder.processed = true
    reminder.save!
  end
  
  # All day events
  Reminder.next_day.each do |reminder|
    message = "#{reminder.title} on #{reminder.date}"
    puts message if Rails.env == "development"
    Notify.send_text(message)
    reminder.processed = true
    reminder.save!
  end
  
end

def pretty_time(time)
  time.strftime('%I:%M %P')
end