class MissionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_mission, only: [:show]

  def index
    @missions = Mission.all
  end

  def show
  end

  private
  def set_mission
    @mission = Mission.find(params[:id])
  end
end
