Feature: Working Website
  As a BTV eboard
  in order to organize the club better
  I want a website that is working to manage the videas and eboard information

  Background:
    Given I am on the home page

  Scenario: User will be able to see the page
    When I follow "About"
    Then I should see "About BTV"
    And I should see "What we do"
    When I follow "What we do"
    Then I should see "Promote a strong sense of Binghamton University pride and spirit."

  Scenario: User will be able to see the board page
    When I follow "Board"
    Then I should see "Our Executive Board"
    And I should see "Alex Kleiner"
    When I follow "Alex Kleiner"
    Then I should see "about Alex Kleiner"

  Scenario: User will be able to send a email to the eboard
    When I follow "Board"
    And I follow "President@TheNewBTV.com"
    
