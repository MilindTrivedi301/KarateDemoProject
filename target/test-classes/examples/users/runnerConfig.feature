Feature: Articles post request

Background: Define url
    Given url 'https://conduit-api.bondaracademy.com/api/'
    Given path 'users/login'
    And request {"user": {"email": "test.user@gmail.com", "password": "Mtech123"}}
    When method post
    Then status 200
    * def token = response.user.token
Scenario: Create new article using karate tool
    #Given path 'users/login'
    #And request {"user": {"email": "test.user@gmail.com", "password": "Mtech123"}}
    #When method post
    #Then status 200
    #* def token = response.user.token
    
    Given header Authorization = 'Token ' + token
    Given path 'articles'
    And request {"article": {"title": "test_hello_Karate2223", "description": "test_karate", "body": "test karate post request", "tagList": ["post_karate"]}}
    When method post
    Then status 201
    And match response.article.title == 'test_hello_Karate2223'
    

