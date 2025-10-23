class City < ApplicationRecord
  belongs_to :block
  has_many :shops
end
