class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  before_action :set_booking, only: [:show]

  def show
    @mission = @booking.mission
    @markers = [{ lat: @mission.latitude,
                  lng: @mission.longitude,
                  infoWindow: render_to_string(partial: "info_window", locals: { mission: @mission })
                   }]
    authorize @booking
  end

  def create
    @mission = Mission.find(params[:mission_id])
    @booking = Booking.new
    @booking.user = current_user
    authorize @booking
    @booking.mission = Mission.find(params[:mission_id])

    respond_to do |format|
      if @booking.save
        format.html { redirect_to booking_path(@booking.mission), notice: 'Renting was successfully created.' }
        # format.json { render :show, status: :created_at, location: @board_game }
      else
        format.html { render template: "missions/show" }
        # format.json { render json: @renting.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(
      :first_name, :last_name, :email, :phone_number, :address, :description, :photos, :role, :avatar, :portfolio_url, :price_by_hour)
  end
end
