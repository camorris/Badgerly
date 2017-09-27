class BadgesController < ApplicationController
  before_action :authorize, except: [:index, :show] 
  def index
    @badges = Badge.all
    @users = User.all
  end

  def show
  end

  def new
    @badge = Badge.new
  end

  def create
    @badge = Badge.new(badge_params)
    @badge.user = current_user
    if @badge.save
      redirect_to user_path(current_user)
    else 
      redirect_to new_badge_path
    end
  end

  def update
  end

  def destroy
  end

  private
  def badge_params
    params.require(:badge).permit(:course, :website, :date, :purpose)
  end
end
