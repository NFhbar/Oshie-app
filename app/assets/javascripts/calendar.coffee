# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->

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
  $('#my_calendar').fullCalendar
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



  return
