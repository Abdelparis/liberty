class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :update]
  before_action :set_user, only: [:show, :update, :edit]

  def show
    authorize @user
  end

  def edit
  end

  def update
    authorize @user
    @user.update(user_params)
    redirect_to user_path, notice: 'Profil mis à jour'
  end

  private

  def set_user
    @user = User.find(params[:id])
    authorize @user
  end

  def user_params
    params.require(:user).permit(
      :first_name, :last_name, :address, :phone_number, :email
    )
  end
end
