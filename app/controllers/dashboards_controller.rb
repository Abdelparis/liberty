class DashboardsController < ApplicationController
  def dashboard
    authorize :dashboard, :dashboard?
    @user = current_user
    @current_bookings = current_user.bookings.select { |booking| booking.mission.end_date_time >= Date.today && booking.status == "accepted" }
    @past_bookings = current_user.bookings.select { |booking| booking.mission.end_date_time < Date.today &&  booking.mission.end_date_time >= Date.today-7 && booking.status == "accepted" }
  end

  def freelancer
    authorize :dashboard, :freelancer?
    @params = params[:status]
    if @params == "currently" || @params.nil?
      @bookings = current_user.bookings.select { |booking| booking.mission.end_date_time >= Date.today && booking.status == "accepted" }
    elsif @params == "history"
      @bookings = current_user.bookings.select { |booking| booking.mission.end_date_time < Date.today }
    elsif @params == "pending"
      @bookings = current_user.bookings.select { |booking| booking.mission.end_date_time >= Date.today || booking.status == "pending" }
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
