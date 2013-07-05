require 'selenium-webdriver'
module TestHelper

  def firefox
    @webdriver ||= Selenium::WebDriver.for :firefox
  end

end