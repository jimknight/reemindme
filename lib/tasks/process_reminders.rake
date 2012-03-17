task :process_reminders => :environment do
  # find next hour's reminders
  Reminder.next_hour.each do |reminder|
    # process each reminder
    message = "#{reminder.title} at #{reminder.time}"
    Notify.send_text(message)
  end
end
