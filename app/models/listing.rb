class Listing < ApplicationRecord
  belongs_to :address
  has_many :favorites
end
