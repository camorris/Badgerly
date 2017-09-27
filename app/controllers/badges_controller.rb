class BadgesController < ApplicationController
  before_action :authorize, except: [:index, :show] 
  def index
    @badges = Badge.all
  end

  def show
  end

  def new
    @badge = Badge.new
  end

  def create
  end

  def update
  end

  def destroy
  end
end
