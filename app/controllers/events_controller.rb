class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new

  end
end
