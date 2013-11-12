class AuthController < ApplicationController

  def index
    @user = User.new
    render :index
  end

  def login
    user = params[:user]
    user_another = User.find_by_username user[:username]
    if user_another== nil || user[:password] != user_another.password || !user_another.is_admin
      flash[:error]="\u7528\u6237\u540d\u6216\u8005\u5bc6\u7801\u9519\u8bef"
      redirect_to :back
    else
      flash[:notice]="\u767b\u5f55\u6210\u529f\uff01"
      session[:username] = user[:username]
      redirect_to "/admin/events"

    end
  end

  def is_logged

    #use this method to validate if user logined
    #if user logined will return logined username
    #else redirect the page to login

    return session[:username] unless session[:username].nil?
    redirect_to "/auth/login"
  end

  def logout
    session[:username] = nil
    redirect_to "/events"
  end

end
