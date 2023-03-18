Feature: Countries POST API Validation

Background:
Given url 'http://localhost:3000'

@application
Scenario: Add City endpoint
     Given path '/cities'
     And header Accept = 'application/json'
     * def body = 
        """
           {
               "id": 11,
               "cityCode": 111,
               "cityName": "Kolkata",
               "languageCode": "BNG"
          }
          """
And request body
When method POST
Then status 201

    @json-payload
     Scenario: Add City from json file
     * def payload = read('classpath:city.json')
     * def payload.cityCode = 113
     * def payload.cityName = 'Kolkata'
     * def payload.languageCode = 'BNG'
     * def payload.id = 12
     Given request body
     When method POST
     Then status 201
     
     @data-driven
  Scenario Outline: Add multiple cities <cityName> <cityCode>
    * set payload.cityName = <cityName>
    * set payload.cityCode = <cityCode>
    * set payload.languageCode = <languageCode>
    "languageCode": "FR",
    * set payload.id = <id>
    Given request payload
    When method POST
    Then status 201

    Examples: 
      | cityName  | cityCode  | languageCode | id  | 
      | 'Gujrat'     | 114         |      'HND'        |14  |
      | 'Bogura'    | 115         |       'BNG'       | 15 |