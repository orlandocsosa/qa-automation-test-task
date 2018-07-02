require 'watir-webdriver'

class BasePageObject

  ## Primary instance of driver used for executions.


  def driver
    @browser
    if @browser == nil
      initialize
    end
  end

  def initialize
    @browser = Watir::Browser.new :chrome
  end

  def close_browser
    if @browser != nil
      @browser.quit
      @browser.close
    end
  end
end