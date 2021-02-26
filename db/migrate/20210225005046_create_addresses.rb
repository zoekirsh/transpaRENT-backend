class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :address
      t.string :city
      t.integer :zip
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
