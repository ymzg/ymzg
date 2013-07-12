class EventsController < ApplicationController

  def create
    @event = Event.new(event_params)
    @event.save

    redirect_to @event
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(params[:event].permit(:name, :describe, :data, :location))
      redirect_to @event
    else
      render 'edit'
    end
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
