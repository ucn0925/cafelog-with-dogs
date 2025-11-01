class Dog < ApplicationRecord
  belongs_to :user
  has_one_attached :dog_image

  enum size: { small: 0, medium: 1, large: 2, unknown: 3 }

  validates :name, length: { maximum: 50 }
  validates :breed, length: { maximum: 50 }
end
