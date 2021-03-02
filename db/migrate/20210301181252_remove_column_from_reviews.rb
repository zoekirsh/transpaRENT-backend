class RemoveColumnFromReviews < ActiveRecord::Migration[6.1]
  def change
    remove_column :reviews, :address_id
    add_column :reviews, :address, :string 
    add_column :reviews, :user_id, :integer
  end
end
