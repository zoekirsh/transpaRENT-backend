class FavoritesController < ApplicationController
  skip_before_action :authorized, only: [:index]

  #for a user
  def my_favorites
    favorites = Favorite.all.select{|f| f.user_id == current_user.id}

    render json: favorites, each_serializer: FavoriteSerializer
  end

  def is_favorite 
    #byebug
    favorite = Favorite.find_by(property_id: params[:id], user_id: current_user.id)
    
    render json: favorite
  end

  def index
    favorites = Favorite.all

    render json: favorites, each_serializer: FavoriteSerializer
  end

  def create
    #byebug
    favorite = Favorite.create(favorite_params)

    if favorite.valid?
      render json: {favorite: FavoriteSerializer.new(favorite)}
    else
      render json: {error: "Listing already liked by this user."}
    end

  end

  def destroy
    Review.find(params[:id]).destroy

    render json: {message: "Removed from Favorites"}
  end

  private

  def favorite_params 
    params.require(:favorite).permit(:id, :user_id, :property_id, :primary_photo, :address, :price, :beds, :apartment)
  end

end