require 'watir-webdriver'
require_relative '../../../features/ui/pages/common_methods'


class GoogleSite < CommonMethods

  def google_search(text)
    @browser.input(id: 'lst-ib').send_keys text
    @browser.send_keys :enter
  end

  def first_result
    @browser.div(class: 'bkWMgd').a.text
  end

end