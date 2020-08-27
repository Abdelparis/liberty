class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :update]
  before_action :set_booking, only: [:show]

  def show
    authorize @booking
    @mission = @booking.mission
    @markers = [{ lat: @mission.latitude,
                  lng: @mission.longitude,
                  infoWindow: render_to_string(partial: "info_window", locals: { mission: @mission })
                   }]

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

  def update
    set_booking
    authorize @booking
    @booking.update(booking_params)
    redirect_to booking_path, notice: "L'avis a bien été pris en compte !"
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(
      :freelancer_review, :freelancer_rating, :company_review, :company_rating
    )
  end
end
