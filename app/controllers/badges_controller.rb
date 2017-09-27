class BadgesController < ApplicationController
  before_action :authorize, except: [:index, :show] 
  def index
    @badges = current_user.badges
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
  def edit
    @badge = Badge.find(params[:id])
  end
 
  def update
      @badge = Badge.find(params[:id])
      if @badge.update(badge_params)
        redirect_to user_path(current_user)
      else
        redirect_to edit_badge_path(@badge)

      end
  end
  

  def destroy
    @badge = Badge.find(params[:id])
    if @badge.destroy
      redirect_to user_path(current_user)
    end
  end

  private
  def badge_params
    params.require(:badge).permit(:course, :website, :date, :purpose)
  end
end
