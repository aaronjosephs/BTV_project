Feature: Administrator Pages
  As an adminstrator from BTV
  So that I can manage the website
  I want to access administrative information
    such as user info and pending user-submitted videos
    on an admin section of the website

Background:
  Given I am logged in as an administrator

Scenario: the dashboard
  Given I am on the admin dashboard
  Then I should see "Admin Dashboard"
  And I should see "Users"
  And I should see "Pending Videos"
  And I should see "User Videos"

Scenario: the users page
  Given I am on the admin dashboard
  When I follow "Users"
  Then I should see "User Information"

Scenario: specific user page
  Given there is a user named "Ima User"
  And I am on the admin user page
  Then I should see "Ima User"
  When I follow "Ima User"
  Then I should see "Ima User's Information"

Scenario: pending videos page
  Given I am on the admin dashboard
  When I follow "Pending Videos"
  Then I should see "Unapproved User Videos"

Scenario: user videos page
  Given I am on the admin dashboard
  When I follow "User Videos"
  Then I should see "Approved User Videos"

Scenario: specific video page
  Given there is a video titled "Unapproved Video"
  And I am on the admin unapproved videos page
  Then I should see "Unapproved Video"
  When I follow "Unapproved Video"
  Then I should see "Unapproved Video Information"

