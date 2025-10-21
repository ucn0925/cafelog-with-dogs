class Shop < ApplicationRecord
  belongs_to :user
  belongs_to :genre, optional: true
  validates :name, presence: true
  validates :address, presence: true
  validates :genre_id, presence: true
end
