function fn() {
    karate.log('Logs from karate configuration');

    var config = { // base config JSON
        appId: 'my.app.id',
        appSecret: 'my.secret',
        someUrlBase: 'https://some-host.com/v1/auth/',
        anotherUrlBase: 'https://another-host.com/v1/'
    };

    config.firstAddress = function(input) {
        return 'Working ' + input;
    };

    return config;
}