class UsersController < ApplicationController
  def users_by_place
    @users = User.where(place_id: params[:place_id])
    render json: @users
  end
end
