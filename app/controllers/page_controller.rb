class PageController < ApplicationController
  def index
  end

  def show
    ActionCable.server.broadcast 'web_notifications_channel',  message: params[:calculator][:title] + '<br>'
  end
end
