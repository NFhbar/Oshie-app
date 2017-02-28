# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#= require jvectormap/jquery-jvectormap-2.0.2.min.js
#= require jvectormap/jquery-jvectormap-world-mill-en.js
#= require codemirror/codemirror.js
#= require codemirror/mode/javascript/javascript.js
#= require video/responsible-video.js
#
$(document).ready ->
  $('.demo_lesson').click ->
    swal {
      title: 'Are you sure?'
      text: 'Your will not be able to recover this Lesson!'
      type: 'warning'
      showCancelButton: true
      confirmButtonColor: '#DD6B55'
      confirmButtonText: 'Yes, delete it!'
      cancelButtonText: 'Cancel!'
      closeOnConfirm: false
      closeOnCancel: false
    }, (isConfirm) ->
      if isConfirm
        swal 'Deleted!', 'Your Lesson has been deleted.', 'success'
      else
        swal 'Cancelled', 'Your Lesson is safe :)', 'error'
      return
    return


  editor_one = CodeMirror.fromTextArea(document.getElementById('code1'),
    lineNumbers: true
    matchBrackets: true
    styleActiveLine: true
    theme: 'ambiance')

  mapData =
    'US': 498
    'SA': 200
    'CA': 1300
    'DE': 220
    'FR': 540
    'CN': 120
    'AU': 760
    'BR': 550
    'IN': 200
    'GB': 120
    'RU': 2000

  $('#world-map').vectorMap
    map: 'world_mill_en'
    backgroundColor: 'transparent'
    regionStyle: initial:
      fill: '#e4e4e4'
      'fill-opacity': 1
      stroke: 'none'
      'stroke-width': 0
      'stroke-opacity': 0
    series: regions: [ {
      values: mapData
      scale: [
        '#1ab394'
        '#22d6b1'
      ]
      normalizeFunction: 'polynomial'
    } ]

  return

  $(document).on 'webkitfullscreenchange mozfullscreenchange fullscreenchange', (e) ->
    if $('body').hasClass('fullscreen-video') then $('body').removeClass('fullscreen-video') else $('body').addClass('fullscreen-video')
    return
