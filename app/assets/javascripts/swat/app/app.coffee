#= require_self
#
#= require_tree ./controllers
#= require_tree ./services

App = angular.module 'SWAT', [
  'ngRoute'
  'ui.router'
]


#App.config ($urlRouterProvider, $stateProvider) ->
#  $urlRouterProvider.otherwise("/dashboard");
#  $stateProvider.state("dashboard",
#    url: "/dashboard"
#    views:
#      content:
#        templateUrl: "dashboard.html"
#        controller: 'DashboardCtrl'
#      rightBar:
#        templateUrl: "dashboard_info.html"
#  )

#App.config ($httpProvider) ->
#  authToken = $("meta[name=\"csrf-token\"]").attr("content")
#  $httpProvider.defaults.headers.common["X-CSRF-Token"] = authToken
#


