'use strict';

(function(){
  angular.module("songs", [
    "ngAnimate",
    "ui.router",
    "ngResource",
    "ui.bootstrap",
    "templates"
  ])

  .controller("songBookController", [
    '$state',
    '$resource',
    'Song',
    songBookCtrlModels
  ])

  .factory('Song', [ '$resource', function($resource) {
    return $resource('/songs/:songId', { songId: "@id", format: 'json'});
  }]);

  function songBookCtrlModels (
    $state,
    $resource,
    Song
  ) {
    var self=this;

    self.songs = Song.query();

    self.songs.$promise.then(function() {
      self.totalItems = self.songs.length;
      self.itemsPerPage = 100;
      self.currentPage = 1;
      self.maxSize = 7;
      self.updatePage();
    })

    self.updatePage = function() {
      var begin = ((self.currentPage - 1) * self.itemsPerPage);
      var end = begin + self.itemsPerPage;

      self.pageSongs = self.songs.slice(begin, end);
    }
  }
})()