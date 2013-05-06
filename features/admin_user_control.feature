Feature: admin user control

  As an administrator
  So that I can control the users of the website
  I want to see and change user information

Background:
  Given the following users exist:
  | name     | email                  |
  | Ima User | ima@binghamton.edu     |
  | Adam In  | position@TheNewBTV.com |

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
  Then I should see "Ahma User"
  And I should not see "Ima User"
  And I should see "auser0@binghamton.edu"
  And I should not see "ima@binghamton.edu"
