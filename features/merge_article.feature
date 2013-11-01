Feature: Merge Articles
  As an admin
  In order to organize similar content
  I want to merge similar articles

  Background:
    Given the blog is set up


  Scenario: A non-admin cannot merge articles
    Given I am logged in as a non-admin
    And I am on the edit article page for "Hello World!"
    Then I should not see "Merge Articles"

  Scenario: When articles are merged, the merged article should contain the text of both previous articles
    Given I am logged into the admin panel
    And I am on the edit article page for "Hello World!"
    Then I should see "Welcome to the jungle."
    And I fill in "merge_with" with "4"
    And I press "Merge"
    Then I should see "Welcome to the jungle."
    And I should see "Once upon a time Ken was the man"



