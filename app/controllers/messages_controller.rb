class MessagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    authorize @message
    if @message.save
      ChatroomChannel.broadcast_to(
      @chatroom,
      render_to_string(partial: "message", locals: { message: @message })
      )
      redirect_to "/imbox?chatroom_id=#{@chatroom.id}#message-#{anchor(@message.id)}"
    else
      render "chatrooms/show"
    end
  end

  def anchor(element)
    if element == 1
      1
    else
      element - 1
    end
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
