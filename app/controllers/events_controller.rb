class EventsController < ApplicationController


def show
	@event=Event.find(params[:id])	
end

  def index
    @events = Event.all
  end

  def new

  end

  def admin_events
    @events = Event.all();
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    redirect_to admin_events_path
  end
end
