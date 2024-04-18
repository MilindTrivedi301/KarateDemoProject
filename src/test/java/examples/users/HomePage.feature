Feature: Test for the home page

Scenario: Get all the tags
    Given url 'https://conduit-api.bondaracademy.com/api/tags'
    When method GET
    Then status 200

Scenario: Get the 10 articles from the page using param
    Given url 'https://conduit-api.bondaracademy.com/api/articles'
    Given params { limit: 10, offset: 0}
    When method GET
    Then status 200
