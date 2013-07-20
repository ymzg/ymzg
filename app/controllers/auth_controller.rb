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
      redirect_to "/events"

    end
  end

end
