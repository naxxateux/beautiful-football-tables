appDependencies = [
  'ngRoute'
  'once'
]

app = angular
  .module 'app', appDependencies
  .config [
    '$routeProvider', '$locationProvider'
    ($routeProvider, $locationProvider) ->
      $routeProvider
      .when '/',
        controller: 'mainCtrl as main'
        templateUrl: 'pages/main.html'
      .otherwise redirectTo: '/'

      $locationProvider.html5Mode true
      return
  ]
