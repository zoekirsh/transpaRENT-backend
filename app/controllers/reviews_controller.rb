class ReviewsController < ApplicationController
  skip_before_action :authorized, only: [:index, :show, :get_reviews]

  #for a listing
  def get_reviews
    #byebug
    reviews = Review.all.select{|r| r[:address] == params[:id] }

    render json: reviews, each_serializer: ReviewSerializer
  end

  #for a user
  def my_reviews 
    reviews = Review.all.select{|r| r.user_id == current_user.id}

    render json: reviews, each_serializer: ReviewSerializer
  end

  def index
    @reviews = Review.all

    render json: @reviews, each_serializer: ReviewSerializer
  end

  def show
    review = Review.find(params[:id])

    render json: {review: ReviewSerializer.new(review)}
  end

  def create
    review = Review.create(review_params)

    render json: {review: ReviewSerializer.new(review)}
  end

  def update
  end

  def destroy
    Review.find(params[:id]).destroy

    render json: {message: "Review deleted."}
  end

  private

  def review_params 
    params.require(:review).permit(:text, :address, :user_id, :city, :state, :zipcode, :lat, :lng)
  end

end
