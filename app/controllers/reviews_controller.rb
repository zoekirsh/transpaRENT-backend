class ReviewsController < ApplicationController
  skip_before_action :authorized, only: [:index, :show, :get_reviews]

  def get_reviews
    #byebug
    reviews = Review.all.select{|r| r[:address] == params[:id] }

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
  end

  private

  def review_params 
    params.require(:review).permit(:text, :address, :user_id, :city, :state, :zipcode)
  end

end
