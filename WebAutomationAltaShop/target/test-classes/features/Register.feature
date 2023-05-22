Feature: As a register feature as user i have be able to success register so that i can login

  @Reg1
  Scenario: as user i want to input valid to then i can see success register
    Given user on register page
    When user input valid username
    When user input valid email
    And user input valid password
    And user click register button
    Then user on login page

  @Reg2
  Scenario: as user i want to input invalid username and email then get error message
    Given user on register page
    When user input invalid username
    When user input invalid email
    And user input valid password
    And user click register button
    Then user see error message
