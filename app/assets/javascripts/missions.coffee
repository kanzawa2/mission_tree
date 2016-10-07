# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
  #-------- for treegrid --------
  $(".table-treegrid").treegrid
    initialState: "collapsed"
    expanderExpandedClass: 'fa fa-chevron-down'
    expanderCollapsedClass: 'fa fa-chevron-right'

$(document).on 'ready page:load', ready