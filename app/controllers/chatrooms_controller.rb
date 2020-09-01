class ChatroomsController < ApplicationController

  def imbox
    @chatrooms = Chatroom.all
    authorize @chatrooms
    @chatrooms = @chatrooms.select { |chatroom| chatroom.booking.mission.user == current_user}
    # elsif current_user.role == "company"
    #   @chatrooms = Chatroom.all.select { |chatroom| chatroom.booking.mission.user == current_user}
    # end
    if params[:chatroom_id].present?
      @chatroom = Chatroom.find(params[:chatroom_id])
    else
      @chatrooms
    end
     @message = Message.new
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new

    authorize @chatroom
  end
end
