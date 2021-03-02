class ListingSerializer < ActiveModel::Serializer
  attributes :id, :title, :price, :sqf, :bed, :bath, :image, :lat, :lng, :address, :city, :state, :zipcode
end
