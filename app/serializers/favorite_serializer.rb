class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :property_id, :primary_photo, :address, :price, :beds, :apartment
  belongs_to :user

end