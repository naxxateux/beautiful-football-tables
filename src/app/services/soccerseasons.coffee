app.factory 'soccerseasons', (soccerseasonsRest, tools) ->
  getAllSeasons = (filters) ->
    soccerseasonsRest
      .getAllSeasons filters
      .$promise
      .then (data) ->
        tools.prepareResourceData data

  getSeason = (id) ->
    soccerseasonsRest
      .getSeason 'id': id
      .$promise
      .then (data) ->
        tools.prepareResourceData data

  getSeasonTeams = (id) ->
    soccerseasonsRest
      .getSeasonTeams 'id': id
      .$promise
      .then (data) ->
        tools.prepareResourceData data

  getSeasonTable = (id, filters) ->
    soccerseasonsRest
      .getSeasonTable _.merge 'id': id, filters
      .$promise
      .then (data) ->
        tools.prepareResourceData data

  getSeasonFixtures = (id, filters) ->
    soccerseasonsRest
      .getSeasonFixtures _.merge 'id': id, filters
      .$promise
      .then (data) ->
        tools.prepareResourceData data

  getAllSeasons: getAllSeasons
  getSeason: getSeason
  getSeasonTeams: getSeasonTeams
  getSeasonTable: getSeasonTable
  getSeasonFixtures: getSeasonFixtures
