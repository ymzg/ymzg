require 'spec_helper'

describe AuthController do

  before(:each) do
    @user = User.create({:username => "root",:password => "root"} )
    @user.save
  end

  describe "GET #index" do
    it "should render auth index" do
      get :index
      expect(response).to render_template('index')
    end

  end

  describe "POST #login" do
    it "should reject when authentication failed" do
      request.env["HTTP_REFERER"] = 'index'
      post :login, :user => {:username=>'1234', :password=>'1234'}
      expect(response).to redirect_to 'index'
    end
  end
end
