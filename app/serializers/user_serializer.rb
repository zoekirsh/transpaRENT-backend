class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :name, :city, :state, :email

  def reviews
    object.reviews
  end

  def favorites
    object.favorites
  end
end
