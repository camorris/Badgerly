class UsersController < ApplicationController
  def index

  end

  def show
  end
  def new
    @user = User.new

  end
 

  def update
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to new_badge_path
    else
      redirect_to new_user_path
    end
  end
  def edit
  end
  def delete
  end
  private 
  def user_params
    params.require(:user).permit(:name, :email, :password, :age, :password_confirmation)
  end
end
