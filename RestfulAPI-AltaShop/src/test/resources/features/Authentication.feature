Feature: As an Authentication feature as user i have be able to success login, register and get user information

  @Post
  Scenario: Post a Register
    Given user has an endpoint auth register post
    When user input auth endpoint on the register page
    When user set auth, json, input body, raw and token
    And user send request on the send page register
    Then user get output register status code 200

  Scenario: Post a Login
    Given user has an endpoint auth login post
    When user input auth endpoint on the login page
    When user set json, body, and input raw
    And user send request on the send page login
    Then user get token login status code 200

  Scenario: Get user information
    Given user has an endpoint auth get user information
    When user input auth endpoint on the get user information page
    When user set auth, input token login
    And user send request on the send page get user information
    Then user get output get user information status code 200
