Feature: Google Test

  Scenario: Google page simple tests
    Given I go to "http://www.google.com"
    And I search for "The Beatles"
    Then I should see "The Beatles - Wikipedia" in the results page