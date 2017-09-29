class UsersController < ApplicationController
  def index

  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new

  end
 

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      redirect_to edit_user_path(@user)

    end
  end
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to new_badge_path
    else
      validation_error_messages(@user)
      redirect_to new_user_path

    end
  end
  def edit
    @user = User.find(params[:id])
  end
  def destroy
      current_user.destroy
      session[:user_id] = nil
      redirect_to root_path
  end
  
  private 
  def validation_error_messages(user)
    if user.errors.any?
      errors = "<ul>"
      user.errors.full_messages.each do |message|
        errors += "<li>#{message}</li>"
      end
    end
    errors += "</ul>"
    flash[:error] = errors
  end
  def user_params
    params.require(:user).permit(:name, :email, :password, :age, :password_confirmation)
  end
end
