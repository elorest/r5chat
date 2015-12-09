class MessagesController < ApplicationController
  def create
    ActionCable.server.broadcast "messages#{params[:room]}",
      message: params[:message][:body],
      username: cookies.signed[:username]
  end
end
