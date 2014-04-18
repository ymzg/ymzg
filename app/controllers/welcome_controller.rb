class WelcomeController < ActionController::Base
  layout 'application'
  def index
     @events = Event.all.first(2)
  end

  def admin

  end
end