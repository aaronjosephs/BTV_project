Feature: basic website navigation

  As a user
  So I can easily access the major pages
  I want to be able to access each major page from the navigation bar
    regardless of what page I'm on

Scenario Outline: loading pages from the address bar
  When I am on the <page> page
#Then I am, in fact, there.

  Examples: pages
    | page     |
    | home     |
    | about    |
    | board    |
    | shows    |

Scenario Outline: navigation via the navigation bar
  When I am on the <from> page
  And I follow "<link>" within the navigation bar
  Then I am on the <to> page

  Examples: combinations of pages
    | from     | to       | link    |
    | home     | home     | Home    |
    | home     | about    | About   |
    | home     | board    | Board   |
    | home     | shows    | Shows   |
    | about    | home     | Home    |
    | board    | home     | Home    |
    | shows    | home     | Home    |

Scenario Outline: navigation via the BTV logo
  When I am on the <from> page
  And I click the logo
  Then I am on the home page

  Examples: pages
    | from     |
    | home     |
    | about    |
    | board    |
