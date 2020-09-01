class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :update]
  before_action :set_booking, only: [:show]

  def show
    authorize @booking
    @mission = @booking.mission
    @markers = [{ lat: @mission.latitude,
                  lng: @mission.longitude,
                  infoWindow: render_to_string(partial: "info_window", locals: { mission: @mission }),
                  image_url: helpers.asset_url('Logo_Liberty_Rond.png'),
                  price: @mission.price_by_hour
                }]
  end

  def create
    @mission = Mission.find(params[:mission_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    authorize @booking

    @booking.mission = Mission.find(params[:mission_id])
    if @booking.save
      redirect_to booking_path(@booking), notice: 'Votre candidature a bien été enregistrée.'
      # format.json { render :show, status: :created_at, location: @board_game }
    else
      render "missions/show"
      # format.json { render json: @renting.errors, status: :unprocessable_entity }
    end
  end

  def update
    set_booking
    authorize @booking
    @booking.update(booking_params)
    redirect_to dashboard_freelancer_path, notice: "L'avis a bien été pris en compte !"
  end

  def update_status
    set_booking
    authorize @booking
    if params[:commit] == "Accepter"
      @booking.update(status: "accepted")
    elsif params[:commit] == "Refuser"
      @booking.update(status: "rejected")
    end
    # @booking.save
    redirect_to dashboard_company_path, notice: 'Le statut de la mission a bien été updaté'
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(
      :freelancer_review, :freelancer_rating, :company_review, :company_rating, :freelancer_description
    )
  end
end
