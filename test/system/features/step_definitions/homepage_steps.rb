When /^I open the home page$/ do
  home_page_url = "http://0.0.0.0:3000"
  firefox.navigate.to home_page_url
end

Then /^I should be on the home page$/ do
  btn_join_text = "我要报名"
  firefox.find_element(:link_text, btn_join_text)
end