# encoding: UTF-8
class EventsController < AuthController
  before_action :set_event, only: [ :edit, :update]
  before_action :is_logined, only: [ :edit, :update, :new, :create, :destroy, :admin_events]

  def index
    if session[:username].nil?
    @events = Event.paginate(:page => params[:page])
    else
    redirect_to admin_events_path
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params.require(:event).permit(:title, :description, :image, :location, :event_date, :event_url))
    if @event.save
      redirect_to admin_events_path
    else
      render 'new'
    end
  end


  def admin_events
    @events = Event.paginate(:page => params[:page])
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
        format.html {redirect_to event_path(@event), notice:"Event update success."}
      else
        format.html { redirect_to edit_event_path, notice: "Update error!" }
      end
    end
  end

  private
  def set_event
    @event = Event.find(params[:id])
  end

end


