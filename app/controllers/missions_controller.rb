class MissionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_mission, only: [:show]

  def index
    @missions = policy_scope(Mission).order(created_at: :desc)
  end

  def show
    authorize @mission
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
    record.user == user
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

  private

  def set_mission
    @mission = Mission.find(params[:id])
  end

  def mission_params
    params.require(:mission).permit(
      :first_name, :last_name, :email, :phone_number, :address, :description, :photos, :role, :avatar, :portfolio_url, :price_by_hour
    )
  end
end
