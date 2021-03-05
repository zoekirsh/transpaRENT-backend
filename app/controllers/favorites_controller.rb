class FavoritesController < ApplicationController
  skip_before_action :authorized, only: [:index]

  def get_favorites
    #make the call to api
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

    #if valid

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