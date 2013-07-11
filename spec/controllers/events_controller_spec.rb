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



end
