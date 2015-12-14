'use strict';

angular.module('skilldemonApp')
    .factory('Register', function ($resource) {
        return $resource('api/register', {}, {
        });
    });


