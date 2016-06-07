app.controller 'MainController', ($scope, $q, soccerseasons) ->
  soccerseasons
    .getAllSeasons()
    .then (loadedData) ->
      console.log loadedData
      return
  return
