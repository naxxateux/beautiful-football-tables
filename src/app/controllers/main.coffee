app.controller 'MainController', ($scope, soccerseasons) ->
  soccerseasons
    .getAllSeasons()
    .then (loadedData) ->
      console.log loadedData
      return
  return
