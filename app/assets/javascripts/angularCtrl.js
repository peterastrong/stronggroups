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

    $scope.updateUserEvent = function(userId, eventId) {
      var params = {
        user_id: userId,
        event_id: eventId
      };
      $http.patch('api/v1/users/' + userId + ".json", params).then(function(response) {
        $scope.userEvents = response.data.events;
      });
    };



  });
}());