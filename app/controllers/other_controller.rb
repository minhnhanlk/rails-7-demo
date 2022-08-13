class OtherController < ApplicationController
  def post_something
    message = Message.create(body: "#{params[:message][:name]}: #{params[:message][:message]}")

    # Turbo::StreamsChannel.broadcast_append_to(
    #   'message-channel',
    #   target: 'messages',
    #   partial: 'other/message',
    #   locals: {message: message}
    # )
  end
end
