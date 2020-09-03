class MissionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_mission, only: [:show]

  def index
    @missions = policy_scope(Mission)
    missions_free = @missions.includes(:bookings).where.not(bookings: { status: ["accepted", "canceled"]}).where("start_date_time::date >=  '#{Date.today}'" ).distinct.order(created_at: :desc)
    mission_no_booking = @missions.where("missions.id not in (select mission_id from bookings)")

    mission_no_booking = @missions.includes(:bookings).where(bookings: {id: nil})
    missions_free = @missions.includes(:bookings).where(bookings: { status: ["rejected", "pending"]})

    @missions = mission_no_booking.or(missions_free).where("start_date_time::date >= '#{Date.today}'").distinct.order(created_at: :desc)
    # raise
    # .where("start_date_time::date >=  '#{Date.today}'").order(created_at: :desc)
    # #test = @missions.includes(:bookings).where(bookings: {id: nil})
    # #@missions = missions_free + mission_no_booking

    # @missions = @missions.includes(:bookings).where(bookings: {id: nil}).or(@missions.includes(:bookings).where.not(bookings: { status: ["accepted", "canceled"]}).where("start_date_time::date >=  '#{Date.today}'")).distinct.order(created_at: :desc)
    # @missions = @missions.joins(:bookings).where("(bookings.id IS NULL OR bookings.status IN ('pending', 'rejected')) AND start_date_time::date >=  '#{Date.today}'").distinct.order(created_at: :desc)

    # @missions = @missions.joins(:bookings).where("(COUNT(missions.bookings) = 0 OR bookings.status IN ('pending', 'rejected')) AND start_date_time::date >=  '#{Date.today}'").distinct.order(created_at: :desc)
    # raise
    @params = params[:search]
    if @params.empty?
      @missions
    elsif @params[:name] && @params[:address] && @params[:start_date_time] && @params[:end_date_time]
      @missions = @missions.where("name ILIKE ?", "%#{@params[:name]}%") if @params[:name].present?
      @missions = @missions.near("%#{@params[:address]}%") if @params[:address].present?

      if @params[:start_date_time].present? && @params[:end_date_time].present?
        @missions = @missions.where("start_date_time > ?", "%#{@params[:start_date_time]}%")
        @missions = @missions.where("end_date_time < ?", "%#{@params[:end_date_time]}%")
      end
      # raise
      # @missions = Mission.where("start_date_time ILIKE ?", "%#{@params[:start_date_time]}%") && Mission.where("end_date_time ILIKE ?", "%#{@params[:end_date_time]}%")
    else
      @missions = Mission.all
    end

    @markers = @missions.map do |mission|
      {
        lat: mission.latitude,
        lng: mission.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { mission: mission }),
        image_url: helpers.asset_url('Logo_Liberty_Rond.png'),
        price: mission.price_by_hour,
        marker_id: mission.id
      }
    end
  end

  def show
    @price = total_price(@mission.price_by_hour, @mission.start_date_time, @mission.end_date_time)
    @markers = [{ lat: @mission.latitude,
                  lng: @mission.longitude,
                  infoWindow: render_to_string(partial: "info_window", locals: { mission: @mission }),
                  image_url: helpers.asset_url('Logo_Liberty_Rond.png'),
                  price: @mission.price_by_hour
                }]

    # @booking = @mission.bookings.find_by mission_id: params[:id]

    authorize @mission
    @booking = Booking.new
    @mission = Mission.find(params[:id])
    @bookings = Booking.where(mission: @mission)
    @user = current_user
  end

  def new
    @mission = Mission.new
    authorize @mission
  end

  def edit
    authorize @mission
  end

  def create
    @mission = Mission.new(mission_params)
    @mission.user = current_user
    authorize @mission

    respond_to do |format|
      if @mission.save
        format.html { redirect_to @mission, notice: 'La mission a bien été créee.' }
        format.json { render :show, status: :created, location: @mission }
      else
        format.html { render :new }
        format.json { render json: @mission.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    record.user = user
    authorize @mission

    respond_to do |format|
      if @mission.save
        format.html { redirect_to @mission, notice: 'La mission a bien été mise à jour.' }
        format.json { render :show, status: :ok, location: @mission }
      else
        format.html { render :edit }
        format.json { render json: @mission.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_mission
    @mission = Mission.find(params[:id])
  end

  def mission_params
    params.require(:mission).permit(:name, :description, :address, :price_by_hour, :start_date_time, :end_date_time, :job_category_id, :photos, :user_id, :longitude, :latitude)

  end

  def total_price(price, start_time, end_time)
    price * (end_time - start_time) / 3600
  end
end
