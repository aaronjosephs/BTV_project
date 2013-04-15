Feature: View the video
  As a user
  In order to see what is being shared by BTV
  I want to see videos submitted by users on the BTV Webpage

  Background:
    Given the page is set up
    And I am logged in as a User
    And I am on the video page

  Scenario: Successful view video
    Then I should be able to see embedded YouTube video
    And I should see the description of video
    # May need to add another step for click video but not sure how to 
    # describe as it differs from clicking a button

  Scenario: Unsuccessful view video
    Then I should not be able to see embedded YouTube video
