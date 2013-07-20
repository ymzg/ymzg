class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new

  end

  def admin_events
    @events = Event.all();
  end
end
