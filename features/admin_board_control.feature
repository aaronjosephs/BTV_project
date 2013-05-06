Feature: admin board control

  As an administrator
  So that I can control who appears on the board page
  I want to control which users are on a board and their board information

Background:
  Given I am logged in as an administrator
  And the following users exist:
    | name    | email                  |
    | Adam In | position@TheNewBTV.com |

Scenario: create board member
  Given I am on the admin user page for "Adam In"
  Then I should see "Adam In is currently just a user."
  When I follow "Change Status"
  Then I should see "Adam In's Position"
  When I select "executive" from "Board"
  And I fill in "Title" with "Administrator"
  And I press "Save Changes"
  Then I should be on the admin user page for "Adam In"
  And I should see "Adam In is currently the Administrator for the Executive Board"

Scenario: update board member
  Given "Adam In" is an admin with the following:
    | board       | title         |
    | executive   | administrator |
  And I am on the admin user page for "Adam In"
  Then I should see "Adam In is currently the Administrator for the Executive Board"
  When I follow "Change Status"
  And I select "production" from "Board"
  And I fill in "Title" with "President"
  And I press "Save Changes"
  Then I should see "Adam In is currently the President for the Production Board"

Scenario: demote board member
  Given "Adam In" is an admin with the following:
    | board       | title         |
    | executive   | administrator |
  And I am on the admin user page for "Adam In"
  When I follow "Change Status"
  And I press "Demote User"
  Then I should be on the admin user page for "Adam In"
  And I should see "Adam In is currently just a user"
