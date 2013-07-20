require 'spec_helper'

describe "comments/new" do
  before(:each) do
    assign(:comment, stub_model(Comment,
      :event_id => 1,
      :author => "MyString",
      :content => "MyString"
    ).as_new_record)
  end

  it "renders new comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", comments_path, "post" do
      assert_select "input#comment_event_id[name=?]", "comment[event_id]"
      assert_select "input#comment_author[name=?]", "comment[author]"
      assert_select "input#comment_content[name=?]", "comment[content]"
    end
  end
end
