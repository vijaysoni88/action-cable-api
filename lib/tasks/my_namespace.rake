namespace :my_namespace do
  desc "TODO"
  task my_task: :environment do
    ActionCable.server.broadcast 'web_notifications_channel',  message: "working or not" + '<br>'
  end

end
