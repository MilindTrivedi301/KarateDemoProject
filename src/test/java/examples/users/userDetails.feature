Feature:fetching User Details

Scenario:testing the get call for User Details
 
    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200

Scenario: get all users
    Given url 'https://jsonplaceholder.typicode.com/users'
    When method get
    Then status 200
