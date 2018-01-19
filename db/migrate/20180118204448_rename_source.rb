class RenameSource < ActiveRecord::Migration[5.1]
  def change
    rename_column :houses, :source, :source_material
  end
end
