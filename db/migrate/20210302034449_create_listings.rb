class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :property_id
      t.float :lat
      t.float :lng
      t.string :address
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
