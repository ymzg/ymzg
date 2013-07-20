class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update]

def ding
    @event=Event.find(params[:id])
    @event.ding_count=@event.ding_count+1
    @event.save
    redirect_to event_path @event
end

  def index
    @events = Event.all_events
  end

  def new

  end

  def admin_events
    @events = Event.all()
  end

  def show
  end

  def edit
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    redirect_to admin_events_path
  end

  def update
    respond_to do |format|
      if @event.update(params.require(:event).permit(:title, :description, :event_date))
        format.html {redirect_to @event,notice:"Event update success."}
      else
        format.html {redirect_to edit_event_path,notice:"Update error!"}
      end
    end
  end

  private
  def set_event
    @event = Event.find(params[:id])
  end

end


