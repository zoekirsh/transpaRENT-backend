class Review < ApplicationRecord
  belongs_to :addresses
  has_many :likes
end
