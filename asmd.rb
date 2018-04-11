# https://askubuntu.com/questions/870530/how-to-install-geckodriver-in-ubuntu
#wget https://github.com/mozilla/geckodriver/releases/download/v0.18.0/geckodriver-v0.18.0-linux64.tar.gz
# tar -xvzf geckodriver*
# chmod +x geckodriver
# sudo mv geckodriver /usr/local/bin/

home_page = "http://www.cars.com"

require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox


#Terms of service Scenario
Given("We navigate to the homepage") do
  driver.navigate.to  "http://www.cars.com" 
end

When("I click {string}") do |string|
  driver.find_element(:link_text, string).click()
end

Then("I should be brought to the Terms of Service page") do
  expected_url = "https://www.cars.com/about/terms/"
  driver.current_url == expected_url
end

Then("the page should contain text {string}") do |string|
  driver.page_source.include? string
end






