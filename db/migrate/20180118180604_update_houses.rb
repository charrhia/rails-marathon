class UpdateHouses < ActiveRecord::Migration[5.1]
  def change
    add_column :houses, :image, :string, null: false
  end
end
