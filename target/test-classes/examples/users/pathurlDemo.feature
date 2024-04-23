Feature: Test for the home page

    Background: Define URL
        Given url 'https://conduit-api.bondaracademy.com/api/'

    Scenario: Get all the tags
        Given path 'tags'
        When method GET
        Then status 200
    
    @skipme
    Scenario: Get the 10 articles from the page using param
        Given path 'articles'
        Given params { limit: 10, offset: 0}
        When method GET
        Then status 200
