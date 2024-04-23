Feature: Articles post request

Background: Define url
    Given url 'https://conduit-api.bondaracademy.com/api/'
    Given path 'users/login'
    And request {"user": {"email": "test.user@gmail.com", "password": "Mtech123"}}
    When method post
    Then status 200
    * def token = response.user.token

Scenario: Create new article and delte the same crated arcticle using karate tool

    Given header Authorization = 'Token ' + token
    Given path 'articles'
    And request {"article": {"title": "Delete article ", "description": "test_karate", "body": "test karate post request", "tagList": ["post_karate"]}}
    When method post
    Then status 201
    * def articleId = response.article.slug
    
    Given params { limit 10, offset:0} 
    Given path 'articles'
    When method GET
    Then status 200
  
    Given header Authorization = 'Token ' + token
    Given path 'articles',articleId
    When method delete
    Then status 204

    Given params { limit 10, offset:0} 
    Given path 'articles'
    When method GET
    Then status 200
    And match response.articles[0].title != 'Delete article'
