Feature: Submit Video
  As a User
  In order to share my videos with others
  I want to be able to submit videos to be displayed on the BTV website

  Background:
    Given the page is set up
    And I am logged in as a User
    And I am on the video page
    # Do we really want submit and view on the same page?
    And I press "Submit my own content"

  Scenario: Successful video submit
    Then I should see the field for: Name,Email,YouTube URL,Description
    When I fill in the field for: Name,Email,YouTube URL,Description
    And I press "Submit"
    Then I should see "Successful submission"


  Scenario: Unsucessful video submit
    Then I should see the field for: Name,Email,YouTube URL,Description
    When I fill in the field for: Name,Email,YouTube URL,Description
    And I press "Submit"
    Then I should see "Unsuccessful submission"
