require "selenium-webdriver"

browser = Selenium::WebDriver.for :firefox

Before do |scenario|
  @browser = browser
end

After do |scenario|
  if(scenario.failed?)
    encoded_img = @browser.screenshot_as(:base64)
    embed("data:image/png;base64,#{encoded_img}",'image/png')
  end
end

at_exit do
  browser.quit
end