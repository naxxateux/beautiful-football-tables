app.factory 'soccerseasons', (soccerseasonsRest) ->
  parseSeasonData = (data) ->
    caption: data.caption

  getAllSeasons = ->
    soccerseasonsRest
      .getAllSeasons()
      .$promise
      .then (data) ->
        data.map (d) -> parseSeasonData d

  getSeason = (id) ->
    soccerseasonsRest
      .getSeason 'id': id
      .$promise
      .then (data) ->
        parseSeasonData data

  getAllSeasons: getAllSeasons
  getSeason: getSeason
