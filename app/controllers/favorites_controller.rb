class FavoritesController < ApplicationController

  def get_favorites
    #make the call to api
  end


  def create
  end

  def destroy
  end

end

# save listing_id from api
# "my listings" will make a call to api with ids 

# on load of page, fetch to backend with user_id
#backend gets the favorite ids, makes request to api with ids
# api returns AoH with listings, forwards to frontend