class Favorite < ApplicationRecord
  belongs_to :user
  validates_uniqueness_of :property_id, scope: :user_id
end
