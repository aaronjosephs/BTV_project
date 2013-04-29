#As this feature is dependent on an external javascript plugin,
#it makes a lot of assumptions about the implementation.
#However, it should at least tell us if we break it accidentally.

@javascript
Feature: hamburger button

  As a mobile or otherwise space-restricted user
  So that I can access the navigation bar when I don't have much space
  I want to click on the hamburger button to show the navigation bar

Background:
  Given Blah Blah, javascript is hard to test, leaving this as pending.
  Given I am on the home page
  And the navigation bar is prepared to respond

Scenario: no button when I have enough space
  Given the window is 800 pixels wide
  Then I should not see the hamburger button
  And I should see "Home"
  And I should see "About"

Scenario: button exists when I don't have enough space
  Given the window is 200 pixels wide
  Then I should see the hamburger button
  And I should not see "Home"
  And I should not see "About"

Scenario: button expands and collapses
  Given the window is 200 pixels wide
  Then I should not see the navigation bar
  When I click the hamburger button
  Then I should see the navigation bar
  When I click the hamburger button
  Then I should not see the navigation bar
