class User < ApplicationRecord
  has_secure_password
  has_many :likes
  has_many :favorites
  has_many :listings, through: :favorites
  has_many :addresses
  has_many :reviews, through: :addresses
end
