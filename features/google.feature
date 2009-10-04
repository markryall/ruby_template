Feature: 
  In order to enlighten myself
  As a User 
  I want to search using google

Scenario Outline: User searches for Various things 

Given I'm on the google homepage
When I search for "<search_query>"
Then at least one of the search results link to "<expected_link>"

Examples:
  | search_query | expected_link                   |
  | ThoughtWorks | http://www.thoughtworks.com.au/ |
  | Selenium     | http://seleniumhq.org/          |