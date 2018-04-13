home_page = "http://www.cars.com"

require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox
wait = Selenium::WebDriver::Wait.new(:timeout => 15)

#Login Page ---------------------------------------------
Given("I am on the homepage") do
  driver.navigate.to  "http://www.cars.com" 
end

When("I click the user icon") do
  sleep 10
  
  driver.find_element(:class_name, "global-nav__profile-trigger").click()
end

And ("then click the login link") do
  driver.find_element(:link_text, "Log In").click()
end

Then("I should be brought to the login page") do
  expected_url = "https://www.cars.com/profile/secure/login/?continue=%2F"
  driver.current_url == expected_url
end

And ("the login page should contain text") do
  driver.page_source.include? "Log In with Email"
  driver.page_source.include? "Email"
  driver.page_source.include? "Password"
  driver.page_source.include? "Forgot your password?"
end

#Terms of service Scenario --------------------------------
Given("We navigate to the homepage") do
  driver.navigate.to  "http://www.cars.com" 
end

When("I click the terms of service link") do 
  driver.find_element(:link_text, "Terms of Service" ).click()
end

Then("I should be brought to the Terms of Service page") do
  expected_url = "https://www.cars.com/about/terms/"
  driver.current_url == expected_url
end

Then("TOS page should contain text {string}") do |string|
  driver.page_source.include? string
end


#Privacy Page ---------------------------------------------
Given("We navigate back to the homepage") do
  driver.navigate.to  "http://www.cars.com" 
end

When("I click the Privacy Statement link") do
  driver.find_element(:link_text, "Privacy Statement").click()
end

Then("I should be brought to the Privacy Statement page") do
  expected_url = "https://www.cars.com/about/privacy/"
  driver.current_url == expected_url
end

Then("Privacy page should contain text {string}") do |string|
  driver.page_source.include? string
end
