require 'rest_client'

response = 'empty'

When(/^I call headers json test through a REST client$/) do
  response = RestClient.get 'http://headers.jsontest.com/', {:accept => :json}
end

Then(/^I should receive a response with OK code$/) do
  puts response.code
  raise 'Fail' if response.code != 200
end

And(/^the response JSON contains Host property$/) do
  responseJson = JSON.parse(response.to_str)
  puts responseJson["Host"]
  raise 'Fail' if responseJson["Host"] != "headers.jsontest.com"
end