Feature: As a transaction feature as user i have be able to success transaction so that i can buy products

  @Positive
  Scenario: success transaction
    Given user on login page
    When user input valid email
    And user input valid password
    And user click login button
    Then user on products page

  @Negative
  Scenario: failed transaction
    Given user on login page
    When user input invalid email
    And user input valid password
    And user click login button
    Then user see error message
