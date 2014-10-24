require "selenium-webdriver"
require "./Config/base_config"

config = BaseConfig.Get()

browser = Selenium::WebDriver.for :firefox

browser.get  config["baseUrl"]
p browser.current_url
browser.find_element(link_text: "Use Google.com").click
browser.find_element(link_text: "Images").click
p browser.title
browser.find_element(name: "q").send_keys "book"
browser.find_element(name: "btnG").click
p browser.find_elements(tag_name: "img").size
browser.quit
