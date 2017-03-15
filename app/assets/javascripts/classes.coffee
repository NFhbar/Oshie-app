# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#= require dataTables/datatables.min.js
#= require bootstrap-tagsinput/bootstrap-tagsinput.js
#= require dropzone/dropzone.js

$(document).ready ->
  $('.dataTables-example').DataTable
    pageLength: 25
    responsive: true
    dom: '<"html5buttons"B>lTfgitp'
    buttons: [
      { extend: 'copy' }
      { extend: 'csv' }
      {
        extend: 'excel'
        title: 'ExampleFile'
      }
      {
        extend: 'pdf'
        title: 'ExampleFile'
      }
      {
        extend: 'print'
        customize: (win) ->
          $(win.document.body).addClass 'white-bg'
          $(win.document.body).css 'font-size', '10px'
          $(win.document.body).find('table').addClass('compact').css 'font-size', 'inherit'
          return

      }
    ]

  $('.tagsinput').tagsinput tagClass: 'label label-primary'

  Dropzone.options.dropzoneForm =
    paramName: 'file'
    maxFilesize: 2
    dictDefaultMessage: '<strong>Drop files here or click to upload. </strong></br> (This is just a demo dropzone. Selected files are not actually uploaded.)'

  $('.demo4').click ->
    swal {
      title: 'Are you sure?'
      text: 'Your will not be able to recover this imaginary file!'
      type: 'warning'
      showCancelButton: true
      confirmButtonColor: '#DD6B55'
      confirmButtonText: 'Yes, delete it!'
      cancelButtonText: 'Cancel!'
      closeOnConfirm: false
      closeOnCancel: false
    }, (isConfirm) ->
      if isConfirm
        swal 'Deleted!', 'Your imaginary file has been deleted.', 'success'
      else
        swal 'Cancelled', 'Your imaginary file is safe :)', 'error'
      return
    return

  $('.chosen-select').chosen width: '100%'

  $('.test-select').chosen width: '100%'

  $('#data_1 .input-group.date').datepicker
    todayBtn: 'linked'
    keyboardNavigation: false
    forceParse: false
    calendarWeeks: true
    autoclose: true

#==========================
  #New Class calendar
  #========================
  $('#external-events div.external-event').each ->
    # store data so the calendar knows to render an event upon drop
    $(this).data 'event',
      title: $.trim($(this).text())
      stick: true
    # make the event draggable using jQuery UI
    $(this).draggable
      zIndex: 1111999
      revert: true
      revertDuration: 0
    return

  ### initialize the calendar
 -----------------------------------------------------------------
###

  date = new Date
  d = date.getDate()
  m = date.getMonth()
  y = date.getFullYear()
  $('#newclass_calendar').fullCalendar
    header:
      left: 'prev,next today'
      center: 'title'
      right: 'month,agendaWeek,agendaDay'
    editable: true
    droppable: true
    drop: ->
      # is the "remove after drop" checkbox checked?
      if $('#drop-remove').is(':checked')
        # if so, remove the element from the "Draggable Events" list
        $(this).remove()
      return
    events: [
      {
        title: 'All Day Event'
        start: new Date(y, m, 1)
      }
      {
        title: 'Long Event'
        start: new Date(y, m, d - 5)
        end: new Date(y, m, d - 2)
      }
      {
        id: 999
        title: 'Repeating Event'
        start: new Date(y, m, d - 3, 16, 0)
        allDay: false
      }
      {
        id: 999
        title: 'Repeating Event'
        start: new Date(y, m, d + 4, 16, 0)
        allDay: false
      }
      {
        title: 'Meeting'
        start: new Date(y, m, d, 10, 30)
        allDay: false
      }
      {
        title: 'Lunch'
        start: new Date(y, m, d, 12, 0)
        end: new Date(y, m, d, 14, 0)
        allDay: false
      }
      {
        title: 'Birthday Party'
        start: new Date(y, m, d + 1, 19, 0)
        end: new Date(y, m, d + 1, 22, 30)
        allDay: false
      }
      {
        title: 'Click for Google'
        start: new Date(y, m, 28)
        end: new Date(y, m, 29)
        url: 'http://google.com/'
      }
    ]

  $('.dataTables-example2').DataTable
    pageLength: 25
    responsive: true
    dom: '<"html5buttons"B>lTfgitp'
    buttons: [
      { extend: 'copy' }
      { extend: 'csv' }
      {
        extend: 'excel'
        title: 'ExampleFile'
      }
      {
        extend: 'pdf'
        title: 'ExampleFile'
      }
      {
        extend: 'print'
        customize: (win) ->
          $(win.document.body).addClass 'white-bg'
          $(win.document.body).css 'font-size', '10px'
          $(win.document.body).find('table').addClass('compact').css 'font-size', 'inherit'
          return
      }
    ]

  #======================
  # Tour
  #======================
  # Instance the tour
  tour = new Tour(steps: [
    {

    }
  ])
  # Initialize the tour
  tour.init()

  return
