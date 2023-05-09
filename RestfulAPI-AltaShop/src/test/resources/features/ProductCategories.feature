Feature: As the Product Categories feature as user i have be able to success create a category, get category by ID, get all categories, and delete a category

  @Post
  Scenario: Post a Create a category
    Given user has an endpoint create a category post
    When user input endpoint on the post page
    When user set body, json, and input raw
    And user send request on the send page create a category
    Then user get output create a category status code 200 OK

  Scenario: Get category by ID
    Given user has an endpoint get category by ID
    When user input endpoint on the get page
    And user send request on the send page get category by ID
    Then user get output get category by ID status code 404 Not Found

  Scenario: Get all categories
    Given user has an endpoint get all categories
    When user input endpoint on the get all categories page
    And user send request on the send page get all categories
    Then user get output get all categories status code 200 OK

  Scenario: Delete a category
    Given user has an endpoint delete a category
    When user input endpoint on the delete page
    And user send request on the send page delete a category
    Then user get output delete a category status code 200 OK
