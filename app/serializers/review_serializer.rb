class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :text, :address, :city, :state, :zipcode
  belongs_to :user

end
