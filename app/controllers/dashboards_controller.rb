class DashboardsController < ApplicationController
  def freelancer
    authorize :dashboard, :freelancer?
    @params = params[:status]
    if @params == "currently" || @params.nil?
      @bookings = current_user.bookings.select { |booking| booking.mission.end_date_time < Date.today && booking.accepted == true }
    elsif @params == "history"
      @bookings = current_user.bookings.select { |booking| booking.mission.end_date_time >= Date.today || booking.accepted == false }
    end
  end

  def search
    # if !@params.present? || @params == "pending"
    # elsif @params == "history"
    #   @bookings = current_user.bookings.where("ending_date::date < '#{Date.today}'")
    # elsif @params == "penfing"
    #   @bookings = current_user.bookings.where("ending_date::date >= '#{Date.today}'")
  end
end
