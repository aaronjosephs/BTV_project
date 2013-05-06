Feature: admin user control

  As an administrator
  So that I can control the users of the website
  I want to see and change user information

Background:
  Given the following users exist:
  | name     | email                  |
  | Ima User | ima@binghamton.edu     |
  | Adam In  | position@TheNewBTV.com |
  And I am logged in as an administrator

Scenario: user table exists
  Given I am on the admin user page
  Then I should see "Ima User"
  And I should see "ima@binghamton.edu"
  And I should see "Adam In"
  And I should see "position@TheNewBTV.com"

Scenario: change information
  Given I am on the admin user page for "Ima User"
  When I fill in "Name" with "Ahma User"
  And I fill in "Email" with "auser0@binghamton.edu"
  And I press "Submit Changes"
  Then the "Name" field should contain "Ahma User"
  And the "Email" field should contain "auser0@binghamton.edu"
