Feature: Api test

  Scenario: Api get body
    Given I make a get request to "https://jsonplaceholder.typicode.com/comments"

  Scenario: Api get comments by postId
    Given I make a request to "https://jsonplaceholder.typicode.com/comments" with "40" as postId
    Then I should see "5" as the comments count

  Scenario: Check data inside postId
    Given I make a request to "https://jsonplaceholder.typicode.com/comments" with "40" as postId
    Then response should contain "199" as "id"
    Then response should contain "pariatur aspernatur nam atque quis" as "name"
    Then response should contain "Cooper_Boehm@damian.biz" as "email"
    Then response should contain the string "veniam eos ab voluptatem in fugiat ipsam quis\nofficiis non qui\nquia ut id voluptates et a molestiae commodi quam\ndolorem enim soluta impedit autem nulla" as "body"