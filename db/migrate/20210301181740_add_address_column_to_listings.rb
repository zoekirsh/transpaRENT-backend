class AddAddressColumnToListings < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :address, :string
    add_column :listings, :city, :string
    add_column :listings, :state, :string
    add_column :listings, :zipcode, :integer 
  end
end
