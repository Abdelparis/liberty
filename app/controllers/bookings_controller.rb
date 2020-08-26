class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  before_action :set_booking, only: [:show]

  def show
    @mission = @booking.mission
    @markers = [{ lat: @mission.latitude, lng: @mission.longitude }]
    authorize @booking
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  # def booking_params
  #   params.require(:mission).permit(
  #     :first_name, :last_name, :email, :phone_number, :address, :description, :photos, :role, :avatar, :portfolio_url, :price_by_hour
  #   )
  # end
end
