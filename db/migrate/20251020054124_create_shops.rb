class CreateShops < ActiveRecord::Migration[7.1]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :address
      t.integer :block_id
      t.integer :genre_id
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
