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

  Scenario: json check
    * def data = { name: 'My Name', address1: { city: 'SG', pin: '518172' }, address2: { city: 'HK', pin: '12345' } }
    * print data.address1
    * print (function(p){ return 'input :' +p })('data')
    * set data['anotherKey'] = 1
    * print data
    * match data contains {anotherKey: 1}
    * match firstAddress('something') == 'Working something'

