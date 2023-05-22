Feature: As a login feature as user i have be able to success login so that i can see products page

  @Log1
  Scenario: success login
    Given user on login page
    When user input valid email
    And user input valid password
    And user click login button
    Then user on products page

  @Log2
  Scenario: failed login
    Given user on login page
    When user input invalid email
    And user input valid passwordegative
    And user click login button
    Then user see error message
