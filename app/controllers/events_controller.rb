# encoding: UTF-8
class EventsController < ApplicationController
  before_action :set_event, only: [ :edit, :update]

def ding

    @event=Event.find_by_id(params[:id])
    if @event==nil
    	#flash[:notice] = ""
    	render :text => "没有这个活动"
    else
      @event.ding_count=@event.ding_count+1
      @event.save
      redirect_to event_path @event
    end
  
  
end

  def index
    @events = Event.all_events
  end

  def new
    @event = Event.new
  end

  def create
    
  end

  def admin_events
    @events = Event.all()
  end

  def show
  	@event = Event.find_by_id(params[:id])
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


