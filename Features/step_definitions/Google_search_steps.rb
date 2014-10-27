require 'rspec'

Given(/^I am on Google$/) do
  @browser.navigate.to "http://www.google.com"
end

When(/^I fill in "([^"]*)" found by "([^"]*)" with "([^"]*)"$/) do |value, type, keys|
  @element = @browser.find_element(type, value)
  @element.send_keys keys
end

And(/^I submit$/) do
  @element.submit
end

Then /^I should see title "([^"]*)"$/ do |title|
  sleep 0.1 #wait for title element to actually update!
  raise "Fail" if @browser.title != title
end