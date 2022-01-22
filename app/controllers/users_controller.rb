class UsersController < ApplicationController
  
  def index
    users = User.all
    render json: users
  end

  def create
    user = User.new(
      name: params[:name],
      bio: params[:bio]
    )
    if user.save
      render json: user
    else
      render json: {errors: user.errors.full_messages}
    end
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def update
    user = User.find(params[:id])
    user.name = params[:name] || user.name
    user.bio = params[:bio] || user.bio
    if user.save
      render json: user
    else
      render json: {errors: user.errors.full_messages}
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: {message: "user has been obliterated"}
  end

end
