require "selenium-webdriver"

default_profile = Selenium::WebDriver::Firefox::Profile.from_name "default"
default_profile['app.update.auto'] = false
default_profile['app.update.enabled'] = false
default_profile.native_events = false

browser = Selenium::WebDriver.for :firefox

Before do |scenario|
  @browser = browser
end

After do |scenario|
  if(scenario.failed?)
    encoded_img = @browser.screenshot_as(:base64)

    embed("data:image/png;base64,#{encoded_img}",'image/png')

    pageSource = File.open("./test-results/#{ scenario.name } pageSource.html","w")
    pageSource.puts @browser.page_source
    pageSource.close
  end
end

at_exit do
  browser.quit
end