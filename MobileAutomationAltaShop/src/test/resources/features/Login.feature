Feature: As an user, I want to success login, So that i can see my home page

  @TestCase-LoginWrongValues
  Scenario: As an user, i cannot login because wrong email or password
    Given user on the login page
    When user input "eskyelvayanti02@gmail.com" on email field
    And user input "password" on password field
    And user click login button
    Then user see error message "Wrong Email or Password"

  @TestCase-LoginValidValues
  Scenario:  As an user, i can login with a valid email and valid password
    Given user on the login page
    When user input "eskyelva@gmail.com" on email field
    And user input "elva123" on password field
    And user click login button
    Then user see home page

  @TestCase-RegisterValidValues
  Scenario:  As an user, i can register with a valid value
    Given user on the login page
    When user click Create One button
    And user input name "Esky" on name field
    And user input email "esky@dummy.com" on email field
    And user input password "123456" on password field
    And user input confirm password "123456" on confirm password field
    And user click register button
    Then user see validate message "Registration Successful"

  @TestCase-RegisterEmptyNames
  Scenario:  As an user, i cannot register because empty name field
    Given user on the login page
    When user click Create One button
    And user input name " " on name field
    And user input email "esky@dummy.com" on email field
    And user input password "123456" on password field
    And user input confirm password "123456" on confirm password field
    And user click register button
    Then user see error alert message "Enter Full Name"

  @TestCase-RegisterEmptyEmails
  Scenario:  As an user, i cannot register because empty email field
    Given user on the login page
    When user click Create One button
    And user input name "esky" on name field
    And user input email " " on email field
    And user input password "123456" on password field
    And user input confirm password "123456" on confirm password field
    And user click register button
    Then user see alert message "Enter Valid Email"



