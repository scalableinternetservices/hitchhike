# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# $ ->
#     $('#trip_search').typeahead
#         name: "trip"
#         remote: "/trips/autocomplete?query=%QUERY"
jQuery ->
  $('#trip_search').autocomplete
    name: "trip"
    remote: "/trips/autocomplete?query=%QUERY"
