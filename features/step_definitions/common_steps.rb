require_relative '../../features/ui/pages/google_site'

And(/^I go to "([^"]*)"$/) do |url|
  @context = GoogleSite.new
  @context.goto url
end
