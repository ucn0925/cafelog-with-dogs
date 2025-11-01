class UsersController < ApplicationController
  def favorites
    @user = User.find(params[:id])
    @favorite_shops = @user.favorite_shops
  end

  def show
    @user = User.find(params[:id])

    if @user != current_user
      redirect_to root_path, alert: "他のユーザーのページにはアクセスできません。"
    end
  end
end
