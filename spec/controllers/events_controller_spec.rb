require 'spec_helper'

describe EventsController do

  describe "GET #index" do
    it "responds successfully with an http 200 status code" do
      get :index
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "loads all of the events into @events" do
      event1, event2 = Event.create!, Event.create!
      get :index

      expect(assigns(:events)).to match_array([event1, event2])
    end
  end

  describe "GET #show" do
    it "responds successfully with an http 200 status code" do
      event1 = Event.create!
      get :show, :id => event1
      expect(response).to be_success
      expect(response.status).to eq(200)
      expect(response).to render_template("show")
    end
  end

  #describe "GET #create" do
  #  it "can create new event on create page" do
  #    date = Time.new()
  #    post :create, :event => {:name=> "test", :describe => "test describe", :data => date, :location => "China"}
  #    expect(assigns(:event)).to
  #    expect(response).to render_template("show")
  #  end
  #end
end
