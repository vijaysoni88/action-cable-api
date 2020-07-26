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
set :output, {error: "log/cron-error.log", standard: "log/cron.log"}
set :output, "#{path}/log/cron_log.log"
set :environment, :development
env :PATH, ENV['PATH']

every 1.minute do
  command "echo 'how are youfsdfsdfasd'"
  runner "Article.some_method"
end

# Learn more: http://github.com/javan/whenever
