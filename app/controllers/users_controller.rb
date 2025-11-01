class UsersController < ApplicationController
  def favorites
    @user = User.find(params[:id])
    @favorite_shops = @user.favorite_shops
  end

  def show
    @user = User.find(params[:id])
  end
end
