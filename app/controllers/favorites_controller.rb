class FavoritesController < ApplicationController
  skip_before_action :authorized, only: [:index]

  def get_favorites
    #make the call to api
  end

  def index
    favorites = Favorite.all

    render json: favorites, each_serializer: FavoriteSerializer
  end

  def create
    #byebug
    favorite = Favorite.create(favorite_params)

    render json: {favorite: FavoriteSerializer.new(favorite)}
  end

  def destroy
    Review.find(params[:id]).destroy

    render json: {message: "Removed from Favorites"}
  end

  private

  def favorite_params 
    params.require(:favorite).permit(:id, :user_id, :property_id)
  end

end

# save listing_id from api
# "my listings" will make a call to api with ids 

# on load of page, fetch to backend with user_id
#backend gets the favorite ids, makes request to api with ids
# api returns AoH with listings, forwards to frontend