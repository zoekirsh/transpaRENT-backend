class Review < ApplicationRecord
  belongs_to :address
  has_many :likes
end
