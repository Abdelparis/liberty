class DashboardsController < ApplicationController
  def dashboard
    authorize :dashboard, :dashboard?
    @user = current_user
    @current_bookings = current_user.bookings.select { |booking| booking.mission.start_date_time <= Date.today && booking.mission.end_date_time <= Date.today && booking.status == "accepted" }
    @future_bookings = current_user.bookings.select { |booking| booking.mission.start_date_time >= Date.today && booking.status == "accepted" }
    @current_missions = current_user.missions.joins(:bookings).where(bookings: { status: "accepted" }).where("start_date_time::date <=  '#{Date.today}'").where("end_date_time::date >=  '#{Date.today}'").distinct
    @pending_missions = current_user.missions.joins(:bookings).where(bookings: { status: "pending" }).where("start_date_time::date >=  '#{Date.today}'").distinct
    @future_missions = current_user.missions.joins(:bookings).where(bookings: { status: "accepted" }).where("start_date_time::date >=  '#{Date.today}'").distinct
  end

  def freelancer
    authorize :dashboard, :freelancer?
    @params = params[:status]
    if @params == "currently" || @params.nil?
      @bookings = current_user.bookings.select { |booking| booking.mission.end_date_time >= Date.today && booking.status == "accepted" }
    elsif @params == "history"
      @bookings = current_user.bookings.select { |booking| booking.mission.end_date_time < Date.today }
    elsif @params == "pending"
      @bookings = current_user.bookings.select { |booking| booking.mission.end_date_time >= Date.today && booking.status == "pending" }
    end
  end

  def company
    authorize :dashboard, :company?
    @params = params[:status]
    if @params == "currently" || @params.nil?
      @missions = current_user.missions.joins(:bookings).where(bookings: { status: "accepted" }).where("end_date_time::date >=  '#{Date.today}'" ).distinct
    elsif @params == "history"
      @missions = current_user.missions.joins(:bookings).where("end_date_time::date <  '#{Date.today}'").distinct
    elsif @params == "pending"
      @missions = current_user.missions.joins(:bookings).where(bookings: { status: "pending" }).where("start_date_time::date >=  '#{Date.today}'" ).distinct
    end
  end
end
