Feature: All helper scenarios

  @get-countries-helper
  Scenario: Validate countries endpoint status 200
  # url
  	* url urlPath
    Given path '/countries'
    When method GET
    Then status 200
    
  @add-city-helper
  Scenario: Add city from json file
  # url, path, cityName, cityCode, languageCode, id
    * set payload.cityName = cityName
    * set payload.cityCode = cityCode
    * set payload.languageCode = languageCode
    * set payload.id = id
    Given request payload
    When method POST
    Then status code
