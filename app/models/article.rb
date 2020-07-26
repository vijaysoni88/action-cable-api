class Article < ApplicationRecord
  def self.some_method
    ActionCable.server.broadcast 'web_notifications_channel',  message: 'working or not'    
  end
end
