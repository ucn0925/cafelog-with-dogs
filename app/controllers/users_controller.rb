class UsersController < ApplicationController
  def favorites
    @user = User.find(params[:id])
    @favorite_shops = @user.favorite_shops
  end
end
