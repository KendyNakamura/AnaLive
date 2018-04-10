class HomeController < ApplicationController
  def index
    @users = User.all.page(params[:page])
    @user = current_user
  end
end
