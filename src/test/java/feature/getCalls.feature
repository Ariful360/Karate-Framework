Feature: Countries GET API Validation

Background:
Given url 'http://localhost:3000'

  Scenario: Validate countries Endpoint status 200
    Given path '/countries'
    When method GET
    Then status 200
    And match response[3].id == 4
    And match response[3].countryName == 'Bangladesh'
    And match response[3].countryCode == 4
  
  Scenario: Validate cities Endpoint status 200
    Given path '/cities'
    When method GET
    Then status 200
    And match response[0].cityCode == 101
    And match response[0].cityName == 'Bunes Aires'
    And match response[0].languageCode == 'ES'
 
  Scenario: Validate languages Endpoint status 200
    Given path '/languages'
    When method GET
    Then status 200
    And match response[2].languageCode == 'BNG'
    And match response[2].language == 'Bengali'
    
