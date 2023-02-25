class RenameTypeToAssetsTypeInAssets < ActiveRecord::Migration[7.0]
  def change
    rename_column :assets, :type, :assets_type
  end
end
