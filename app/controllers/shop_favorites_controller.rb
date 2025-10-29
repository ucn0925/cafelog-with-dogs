class ShopFavoritesController < ApplicationController
  before_action :authenticate_user! # ログインしていない人は使えない

  def create
    shop = Shop.find(params[:shop_id]) # どのお店をお気に入りにするか探す
    current_user.shop_favorites.create(shop: shop) # ログイン中のユーザーでお気にいり登録
    redirect_to request.referer || root_path, notice: "お気に入りに登録しました！" # 店舗ページに戻る
  end

  def destroy
    shop = Shop.find(params[:shop_id]) # 対象のお店を探す
    favorite = current_user.shop_favorites.find_by(shop_id: shop.id) # そのお店をお気に入りした記録を探す
    favorite&.destroy
    redirect_to request.referer || root_path, notice: "お気に入りを解除しました！"
  end
end
