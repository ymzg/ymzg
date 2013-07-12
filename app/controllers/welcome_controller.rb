class WelcomeController < ActionController::Base
  layout 'application'
  def index
     @event = Event.all.first
  end

  def admin

  end
end