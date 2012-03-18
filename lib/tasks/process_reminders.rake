task :process_reminders => :environment do
  # find next hour's reminders
  Reminder.next_hour.each do |reminder|
    # process each reminder
    if reminder.time
      message = "#{reminder.title} at #{pretty_time(reminder.time)} on #{reminder.date}"
    else
      message = "#{reminder.title} on #{reminder.date}"
    end
    puts message if Rails.env == "development"
    Notify.send_text(message)
  end
end

def pretty_time(time)
  time.strftime('%I:%M %P')
end