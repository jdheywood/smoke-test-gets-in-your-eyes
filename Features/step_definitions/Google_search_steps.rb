require 'rspec'
require_relative '../../Config/base_config'

config = BaseConfig.Get

Given(/^I am on Google$/) do
  @browser.navigate.to config["baseUrl"]
end

When(/^I fill in "([^"]*)" found by "([^"]*)" with "([^"]*)"$/) do |value, type, keys|
  @element = @browser.find_element(type, value)
  @element.send_keys keys
end

And(/^I submit$/) do
  @element.submit
  puts "submitted step to google search"
end

Then /^I should see title "([^"]*)"$/ do |title|
  sleep 0.1 #wait for title element to actually update!
  raise "Fail" if @browser.title != title
end