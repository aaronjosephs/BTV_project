Feature: basic website navigation

  As a user
  So I can easily access the major pages
  I want to be able to access each major page from the navigation bar
    regardless of what page I'm on

Scenario Outline: loading pages from the address bar
  When I am on the <page> page
#Then I am, in fact, there.

  Examples: pages
# Could probably use a few more pages.
# Add them in once they exist.
    | page     |
    | Home     |
    | About    |

Scenario Outline: navigation via the navigation bar
  When I am on the <from> page
  And I follow "<to>" within the navigation bar
  Then I am on the <to> page

  Examples: combinations of pages
    | from     | to       |
    | Home     | Home     |
    | Home     | About    |
    | About    | Home     |

Scenario Outline: navigation via the BTV logo
  When I am on the <from> page
  And I click the logo
  Then I am on the Home page

  Examples: pages
    | from     |
    | Home     |
    | About    |
