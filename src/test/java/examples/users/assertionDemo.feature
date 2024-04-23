Feature:Test for the Home page

    Background: Define url
        Given url 'https://conduit-api.bondaracademy.com/api/'
    Scenario: Get all the tags
        Given path 'tags'
        When method GET
        Then status 200
        And match response.tags contains 'Zoom'
        #And match response.tags contains ['Zoom', 'new11']
        And match response.tags contains ['Zoom', 'Coding']
        #And match response.tags !contains 'truck'
        And match response.tags == "#array"
        #And match response.tags == "#string"
        And match each response.tags == "#string"
    
    
    Scenario: Get 10 articles from the page
        Given params { limit 10, offset:0} 
        Given path 'articles'
        When method GET
        Then status 200
        And match response.articles == '#[10]'
        #And match response.articles == '#[9]'
        And match response.articlesCount == 10
        #And match response.articlesCount == '500'