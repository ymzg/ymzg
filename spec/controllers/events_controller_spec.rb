require 'spec_helper'

describe EventsController do

  before(:each) do
    @event1 = Event.create({:title => "name", :description => "description", :event_date => Time.new() } )
    @event1.save
    @event2 = Event.create!
  end


  describe "GET #admin_events" do
    it "responds successfully" do
      get :admin_events
      expect(response).to be_success
    end

    it "view all the events" do

      get :admin_events
      events = assigns(:events)
      expect(events).to match_array([@event1, @event2])
      expect(events.first.title).to eq "name"
    end

    it "should render admin events" do
      get :admin_events
      expect(response).to render_template('admin_events')
    end

  end

  describe "DELETE #destory" do
    #it "sho" do
    #  get :admin_events
    #  expect(response).to be_success
    #end

    it "should render admin events" do
      delete :destroy, :id => @event1
      expect(response).to redirect_to admin_events_path
    end

  end

end
