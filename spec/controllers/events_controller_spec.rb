require 'spec_helper'

describe EventsController do

  before(:each) do
    @event1 = Event.create({:title => "name",:location => "Chengdu", :description => "description", :event_url => "http://balabala.com", :event_date => Time.new() } )
    @event1.save
    @event2 = Event.create({:title => "name2",:location => "Chengdu2", :description => "description2", :event_url => "http://balabala.com", :event_date => Time.new() } )
    double(session[:username] = "mock")
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
      expect(events.second.title).to eq "name2"
    end

    it "should render admin events" do
      get :admin_events
      expect(response).to render_template('admin_events')
    end

  end

  describe "DELETE #destory" do
    it "delete a event" do
      before_delete_count = Event.count
      delete :destroy, :id => @event1
      expect(Event.count).to eq before_delete_count - 1
    end

    it "should render admin events" do
      delete :destroy, :id => @event1
      expect(response).to redirect_to admin_events_path
    end
  end

  describe "GET #index" do
    it "should view all the events for normal user" do
      double(session[:username] = nil)
      get :index
      expect(response).to render_template('index')
      events =  assigns(:events)
      expect(events).to match_array([@event1, @event2])
      expect(events.first.title).to eq "name"
      expect(events.second.title).to eq "name2"
    end

    it "should redirect to admin_event if admin logged in" do
      get :index
      expect(response).to redirect_to admin_events_path
    end
  end



end
