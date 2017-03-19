/* global angular */

(function() {
  angular.module("app").controller("messagesCtrl", function($scope, $http) {
    $scope.setup = function(id) {
      var paramsHash = {subgroup_id: id};
      $http({method: "GET", url: "/api/v1/messages.json", params: paramsHash}).then(function(response) {
        $scope.messages = response.data;
      });
    };

    $scope.createNewMessage = function(body, currentUserId, subgroupId) {
      if (body !== undefined) {
        var params = {
          body: body,
          user_id: currentUserId,
          subgroup_id: subgroupId
        };
        $http.post("/api/v1/messages.json", params).then(function(response) {
          $scope.newMessageBody = "";
        });
      }
    };
  });
})();