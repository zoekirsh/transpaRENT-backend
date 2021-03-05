class RenameTypeColumnOnFavorites < ActiveRecord::Migration[6.1]
  def change
    rename_column :favorites, :type, :apartment
  end
end
