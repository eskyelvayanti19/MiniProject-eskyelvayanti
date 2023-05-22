Feature: User logout feature

  @Logout
  Scenario: success logout
    Given user on home page
    When user click setting button
    And user click logout button
    Then user success logout
