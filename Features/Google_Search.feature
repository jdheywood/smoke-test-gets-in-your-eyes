@live
Feature: Google can search

Background:
  Given I am on Google

Scenario: Search for a term
  When I fill in "q" found by "name" with "BrowserStack"
  And I submit
  Then I should see title "BrowserStack - Google Search"

Scenario: Search for a term with screenshot
  When I fill in "q" found by "name" with "Amido Development"
  And I submit
  Then I should see title "Amido incorrect - Google Search"
