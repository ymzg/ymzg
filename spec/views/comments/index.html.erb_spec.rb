require 'spec_helper'

describe "comments/index" do
  before(:each) do
    assign(:comments, [
      stub_model(Comment,
        :event_id => 1,
        :author => "Author",
        :content => "Content"
      ),
      stub_model(Comment,
        :event_id => 1,
        :author => "Author",
        :content => "Content"
      )
    ])
  end

  it "renders a list of comments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
