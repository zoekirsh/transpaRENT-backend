class ChangeColumnOnFavorites < ActiveRecord::Migration[6.1]
  def change
    rename_column :favorites, :listing_id, :property_id
  end
end
