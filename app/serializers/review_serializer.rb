class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :text, :address, :city, :state, :zipcode, :lat, :lng
  belongs_to :user

end
