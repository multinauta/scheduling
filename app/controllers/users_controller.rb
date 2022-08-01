class UsersController < ApplicationController
  def users_by_place
    @users = User.where(place_id: params[:place_id]).where.not(rol_id: [1]) 
    render json: @users
  end
end
