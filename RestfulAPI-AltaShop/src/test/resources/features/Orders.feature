Feature: As the Orders feature as user i have be able to success create a new order, get all orders and get orders by id

  @Post
  Scenario: Post a Create a new order
    Given user has an endpoint auth create a new order post
    When user input auth endpoint on the post page
    When user set auth type bearer token, body, json, input raw and token
    And user send request on the send page create a new order
    Then user get output create a new order status code 200 OK

  Scenario: Get all orders
    Given user has an endpoint auth get all orders
    When user input auth endpoint on the get page
    When user set auth bearer token and input token
    And user send request on the send page get all orders
    Then user get output get all orders status code 200 OK

  Scenario: Get order by id
    Given user has an endpoint auth get order by id
    When user input auth endpoint on the get order by id page
    When user set auth type bearer token and input token
    And user send request on the send page get order by id
    Then user get output get order by id status code 404 Not Found
