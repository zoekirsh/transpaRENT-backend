class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :address_id
      t.string :text

      t.timestamps
    end
  end
end
