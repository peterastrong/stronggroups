/* global angular */ 

(function() {
  "use strict";

  angular.module("app").controller("angularCtrl", function($scope, $http) {

    $scope.createUser = function(firstName, lastName, inputEmail, inputPassword, passwordConfirmation) {
      var params = { 
        first_name: firstName,
        last_name: lastName,
        email: inputEmail,
        password: inputPassword,
        password_confirmation: passwordConfirmation
      };
      $http.post('/api/v1/users.json', params).then(function(response) {
        // $scope.meetings.push(response.data);
        $scope.firstName = "";
        $scope.lastName = "";
        $scope.email = "";
        $scope.password = "";
        $scope.passwordConfirmation = "";
        $scope.userCreated = true;
      }); 
    };


  });
}());