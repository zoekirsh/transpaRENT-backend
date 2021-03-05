class AddColumnsToFavorites < ActiveRecord::Migration[6.1]
  def change
    add_column :favorites, :primary_photo, :string
    add_column :favorites, :address, :string
    add_column :favorites, :price, :string
    add_column :favorites, :beds, :string
    add_column :favorites, :type, :string
  end
end
