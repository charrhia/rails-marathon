class RenameSourceMaterial < ActiveRecord::Migration[5.1]
  def change
    rename_column :houses, :source_material, :source
  end
end
