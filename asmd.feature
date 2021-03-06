Feature: cars.com search

Scenario: Access Login page through topnav
	Given I am on the homepage
	When I click the user icon
	And then click the login link
	Then I should be brought to the login page
	And the login page should contain text

Scenario: Access to Terms of service page
	Given We navigate to the homepage
	And I click the terms of service link
	Then I should be brought to the Terms of Service page
	And TOS page should contain text "Introduction and Agreement"

Scenario: Access to Privacy Statement
	Given We navigate back to the homepage
	And I click the Privacy Statement link
	Then I should be brought to the Privacy Statement page
	And Privacy page should contain text "The website, including"
