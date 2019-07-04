Feature: Karate API tests

  Scenario: insert a key in json
    * def curDate = new java.util.Date()
    * def data = {key1: 'value1'}
    * match data == {key1: 'value1'}
    * set data.key2 = 'value2'
    * match data == {key1: 'value1', key2: 'value2'}

  Scenario: compose json
    * def key1 = {key1: 'value1'}
    * def key2 = {key2: 'value2'}
    * def data = karate.merge(key1, key2)
    * match data == {key1: 'value1', key2: 'value2'}