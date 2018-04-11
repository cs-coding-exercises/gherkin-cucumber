Feature: cars.com search

Scenario: Access to Terms of service page
	Given We navigate to the homepage
	And I click "Terms of Service"
	Then I should be brought to the Terms of Service page
	And the page should contain text "Introduction and Agreement"


