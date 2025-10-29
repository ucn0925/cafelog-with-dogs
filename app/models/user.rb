class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :shops, dependent: :destroy
  has_many :shop_favorites, dependent: :destroy
  has_many :favorite_shops, through: :shop_favorites, source: :shop
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
