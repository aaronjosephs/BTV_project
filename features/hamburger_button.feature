@javascript
Feature: hamburger button

  As a mobile or otherwise space-restricted user
  So that I can access the navigation bar when I don't have much space
  I want to click on the hamburger button to show the navigation bar

Background:
  Given the navigation bar is prepared to respond

Scenario: no button when I have enough space
  Given the window is 800 pixels wide
  When I am on the home page
  Then I should not see the hamburger button
  And I should see "Home"
  And I should see "About"

Scenario: button exists when I don't have enough space
  Given the window is 200 pixels wide
  When I am on the home page
  Then I should see the hamburger button
  And I should not see "Home"
  And I should not see "About"

Scenario: button expands
  Given the window is 200 pixels wide
  When I am on the home page
  And I click the hamburger button
  Then I should see "Home"
  And I should see "About"
