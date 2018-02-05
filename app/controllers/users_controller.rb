class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def home
  end

  def new
    @user = User.new
  end

  def create
    @user =  User.new(user_params)
    if @user.save
      #fait appel à la fonction show avec l'id du user
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to @user
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to users_path
  end



  private
    def user_params
      params.require(:user).permit(:email, :password)
    end


end
