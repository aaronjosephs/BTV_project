Feature: User login creation

	As a user
	I want to be able to create a login account
	So that I can access member-only parts of the website
	
Background: On the user create page
	Given I am on create user page
	
	Given The following users exist:
	| name	| email 		| type		
	| Alex	| alex@binghamton.edu	| eboard	|
	| Bob	| bob@binghamton.edu	| member	|
	| Chris	| chris@binghamton.edu	| member	|
	
Scenario: Successfully create account
	When I fill in the user form fields with valid information
	And I click "create account"
	Then I should be on the user profile page
	And I should see "account successfully created"
	
Scenario: user name rejected (sad path)
	When i fill in the user form fields with invalid name
	And I click "create account"
	Then I should be on the create user page
	And I should see "account not created: user name not valid"
	
Scenario: email rejected (sad path)
	When i fill in the form fields with invalid email
	And I click "create account"
	Then I should be on the create user page
	And I should see "account not created: email not valid"

	
