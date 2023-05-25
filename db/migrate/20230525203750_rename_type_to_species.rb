class RenameTypeToSpecies < ActiveRecord::Migration[7.0]
  def change
    rename_column :ruffle_feathers, :type, :species
  end
end
