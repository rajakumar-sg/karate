Feature: Karate API tests

  Scenario: insert a key in json
    * def curDate = new java.util.Date()
    * def data = {key1: 'value1'}
    * match data == {key1: 'value1'}
    * set data.key2 = 'value2'
    * match data == {key1: 'value1', key2: 'value2'}
