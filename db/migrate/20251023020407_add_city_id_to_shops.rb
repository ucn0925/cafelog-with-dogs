class AddCityIdToShops < ActiveRecord::Migration[7.1]
  def change
    add_reference :shops, :city, null: false, foreign_key: true
  end
end
