require 'watir-webdriver'
require_relative 'base_page_object'

class CommonMethods < BasePageObject

  def check_url(url)
    @browser.url == url
  end

  def goto(url)
    @browser.goto url
  end
end