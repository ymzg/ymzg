class AuthController < ApplicationController

  def index
    @user = User.new
    render :index
  end

  def login
    user = params[:user]
    Rails.logger.info "========"+user[:username]
    user_another = User.find_by_username user[:username]
    if user_another== nil || user[:password] != user_another.password || !user_another.is_admin
      redirect_to :back
    else
      redirect_to "/"

    end
  end

end
