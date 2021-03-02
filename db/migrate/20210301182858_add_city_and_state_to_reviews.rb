class AddCityAndStateToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :city, :string
    add_column :reviews, :state, :string
    add_column :reviews, :zipcode, :integer
  end
end
