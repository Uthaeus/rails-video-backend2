class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:check_user]
  respond_to :json

  def home
  end

  def about
  end

  def contact
  end

  def check_user
    render json: current_user, include: [:posts]
  end
end
