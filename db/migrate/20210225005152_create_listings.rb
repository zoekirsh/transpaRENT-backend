class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.integer :price
      t.integer :sqf
      t.integer :bed
      t.integer :bath
      t.string :image
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
