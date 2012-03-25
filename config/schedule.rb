# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

# If your ruby binary isn't in a standard place (for example if it's in /usr/local/bin,
# because you installed it yourself from source, or from a thid-party package like REE),
# this tells whenever (or really, the rails runner) where to find it.
env :PATH, '/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin'

set :output, "#{path}/log/cron.log"
every 15.minutes do     
  rake "process_reminders"
end

