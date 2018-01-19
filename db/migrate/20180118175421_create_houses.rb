class CreateHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.string :name, null: false
      t.string :motto
      t.string :author, null: false
      t.string :source_material, null:false
    end
  end
end
