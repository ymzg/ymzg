class EventsController < ApplicationController

  def create
    #render text: params[:event].inspect
    @event = Event.new(event_params)
    @event.save

    redirect_to @event
  end

  def show
    @event = Event.find(params[:id])
  end

  def index
    @events = Event.all
  end

  private

  def event_params
    params.require(:event).permit(:name, :describe, :data, :location)
  end
end
