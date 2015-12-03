class MessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "messages#{params[:room]}"
  end
end
