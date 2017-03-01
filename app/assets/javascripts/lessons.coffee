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

  $('.lesson_visible').click ->
    swal {
      title: 'Your lesson is live!'
      text: 'Your lesson is now visible to all enrolled students.'
      type: 'success'
      showCancelButton: true
      confirmButtonColor: '$navy'
      confirmButtonText: 'Great!'
      cancelButtonText: 'Go Offline'
      closeOnConfirm: true
      closeOnCancel: false
    }, (isConfirm) ->
      if isConfirm

      else
        swal 'Cancelled', 'Your Lesson is offline.', 'error'
      return
    return

  $('.lesson_delete').click ->
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

  return
