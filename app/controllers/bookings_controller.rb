class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :update]
  before_action :set_booking, only: [:show]

  def show
    @mission = @booking.mission
    @markers = [{ lat: @mission.latitude,
                  lng: @mission.longitude,
                  infoWindow: render_to_string(partial: "info_window", locals: { mission: @mission })
                   }]
    authorize @booking
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
