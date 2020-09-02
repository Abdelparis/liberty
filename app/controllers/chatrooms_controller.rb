class ChatroomsController < ApplicationController
  def imbox
    @chatrooms = Chatroom.all
    authorize @chatrooms
    if current_user.role == "freelancer"
      @chatrooms = @chatrooms.select { |chatroom| chatroom.booking.user == current_user}
    elsif current_user.role == "company"
      @chatrooms = Chatroom.all.select { |chatroom| chatroom.booking.mission.user == current_user}
    end
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

  def create
    @booking = Booking.find(params[:booking_id])
    @chatroom = Chatroom.new
    @chatroom.booking = @booking
    authorize @chatroom
    if @chatroom.save
      redirect_to "/imbox?chatroom_id=#{@chatroom.id}"
      # format.json { render :show, status: :created_at, location: @board_game }
    end
  end
end
