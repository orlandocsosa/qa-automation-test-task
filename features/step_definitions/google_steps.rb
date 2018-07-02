require 'rspec'

Given(/^I search for "([^"]*)"$/) do |text|
  @context.google_search text
end

Given(/^I should see "([^"]*)" in the results page$/) do |text|
  @context.first_result.should eq text
end