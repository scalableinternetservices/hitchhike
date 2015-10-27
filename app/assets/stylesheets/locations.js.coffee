$ ->
  $('#locations-search').typeahead
    name: "location"
    remote: "/locations/autocomplete?query=%QUERY"
