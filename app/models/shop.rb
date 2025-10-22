class Shop < ApplicationRecord
  belongs_to :user
  belongs_to :genre, optional: true
  belongs_to :block, optional: true

  validates :name, presence: true
  validates :address, presence: true
  validates :genre_id, presence: true
  validates :block_id, presence: true
end
