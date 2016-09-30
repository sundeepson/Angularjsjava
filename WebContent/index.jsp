<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Example - example-example98-production</title>
  <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.0-beta.19/angular.min.js"></script>
<style type="text/css">
  .css-form input.ng-invalid.ng-dirty {
    background-color: #FA787E;
  }
  .css-form input.ng-valid.ng-dirty {
    background-color: #78FA89;
  }
</style>
<script>
var xmlhttp = new XMLHttpRequest();
xmlhttp.onreadystatechange = function() {
 if (xmlhttp.readystate == 4 && xmlhttp.status == 200) {
   var response = xmlhttp.responseText;
 } else if (xmlhttp.status == 400) { 
   // Handle error
 }
};
// Setup connection
xmlhttp.open("GET", "http://myserver/api", true);
// Make the request
xmlhttp.send();
</script>
</head>
<body ng-app="formExample">
    <div ng-controller="ExampleController">
    <form novalidate  name="formx" class="css-form">
<table>
<tr><td align='right'>Name</td><td align='left'><input type='text' name='name' ng-model='user.name' required value=''></td></tr>
<tr><td align='right'>Email</td><td align='left'><input type='email' name='email' ng-model='user.email' value=''></td></tr>
<tr><td align='right'>Password</td><td align='left'><input type='text' name='password' ng-model='user.password' value=''></td></tr>
<tr><td align='right'>Verify Password</td><td align='left'><input type='text' name='passwordx' ng-model='user.passwordx' value=''></td></tr>
</table>
      <button ng-click="reset()">RESET</button>
      <button ng-click="update(user)">SAVE</button>
    </form>
  </div>
  <script>
    angular.module('formExample', [])
      .controller('ExampleController', ['$scope', function($scope) {
        $scope.master = {};
        $scope.update = function(user) {
          if ($scope.formx.$valid) {
            $scope.master = angular.copy(user);
            alert('Form has been validated successfully');
          }
        };
        $scope.reset = function() {
          $scope.user = angular.copy($scope.master);
        };
        $scope.reset();
      }]);
  </script>
</body>
</html>