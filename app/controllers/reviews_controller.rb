class ReviewsController < ApplicationController
  skip_before_action :authorized, only: [:index, :show]

  def index
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end

end
