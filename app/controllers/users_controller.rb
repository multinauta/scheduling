class UsersController < ApplicationController
  #user.avatar.attach(user_params[:avatar])
  def users_by_place
    @users = User.where(place_id: params[:place_id]).where.not(rol_id: [1]) 
    render json: @users
  end

  def user_params
    params.require(:user).permit(:email, :avatar)
  end
end
