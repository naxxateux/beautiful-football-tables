app.factory 'tools', ->
  first = (array) ->
    return unless array and array.length
    array[0]

  last = (array) ->
    return unless array and array.length
    array[array.length - 1]

  prepareResourceData = (data) ->
    angular.fromJson angular.toJson data

  first: first
  last: last
  prepareResourceData: prepareResourceData
