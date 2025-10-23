class Block < ApplicationRecord
    has_many :shops
    has_many :cities, dependent: :destroy
end
