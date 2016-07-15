'use strict';

(function() {

  var app = angular.module('songbook', [
    'ngAnimate',
    'ui.router',
    'ngResource',
    'templates',
    'ui.bootstrap',
    "songs"
  ])

  app.config([
    "$stateProvider",
    "$urlRouterProvider",
    "$locationProvider",
    routerFunction
  ])


  function routerFunction($stateProvider, $urlRouterProvider, $locationProvider){
    $urlRouterProvider.otherwise('/');
    $locationProvider.html5Mode(true);
    $stateProvider
    .state("index", {
      url: "/",
      templateUrl: "songs/index.html",
      controller: 'songBookController',
      controllerAs: 'songsCtrl'
    })
  }
})()
