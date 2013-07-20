class EventsController < ApplicationController


def show
	@event=Event.find(params[:id])	
end

def ding
    @event=Event.find(params[:id])
    @event.ding_count=@event.ding_count+1
    @event.save
    redirect_to event_path @event
end

  def index
    @events = Event.all
  end

  def new

  end

  def admin_events
    @events = Event.all();
  end
end
