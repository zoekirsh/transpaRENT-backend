class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create, :show]

  def create
    user = User.create(user_params)
    if user.valid? 
      my_token = encode_token({user_id: user.id})
      render json: {id: user.id, username: user.username, name: user.name, city: user.city, email: user.email, token: my_token}
    else
      render json: {error: "failed to create a user"}
    end
  end

  def show
    #ADD CODE 
    user = User.find(params[:id])
    render json: user
  end

  def update
    #CODE HERE
  end

  def destroy
    User.find(params[:id]).destory

    render json: {message: "account deleted"}
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :name, :city, :email)
  end

end
