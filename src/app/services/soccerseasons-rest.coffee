app.service 'soccerseasonsRest', ($resource, apiConfig) ->
  url = apiConfig.API_URL + 'soccerseasons/:id/:action'
  headers = 'X-Auth-Token': apiConfig.API_TOKEN

  actions =
    getAllSeasons:
      method: 'GET'
      headers: headers
      isArray: true
    getSeason:
      method: 'GET'
      headers: headers
    getSeasonTeams:
      method: 'GET'
      headers: headers
      params:
        action: 'teams'
    getSeasonTable:
      method: 'GET'
      headers: headers
      params:
        action: 'leagueTable'
    getSeasonFixtures:
      method: 'GET'
      headers: headers
      params:
        action: 'fixtures'

  $resource url, {}, actions
