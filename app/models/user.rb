class User < ApplicationRecord
  has_secure_password
  has_many :likes
  has_many :favorites, dependent: :destroy
  has_many :listings, through: :favorites
  has_many :reviews
  has_many :reviews, through: :likes

  validates_uniqueness_of :username
end
