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

    $scope.setup = function(id) {
      $http.get("api/v1/users/" + id.toString() + ".json").then(function(response) {
        $scope.userEvents = response.data.events;
      });
    };

    $scope.toggleOrder = function(attribute) {
      if (attribute !== $scope.orderAttribute) {
        $scope.isDescending = false;
      } else {
        $scope.isDescending = !$scope.isDescending;
      }
      $scope.orderAttribute = attribute;
    };


  });
}());