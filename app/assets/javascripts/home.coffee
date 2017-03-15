$(document).ready ->

  # Instance the tour
  tour = new Tour(steps: [
    {

    }
  ])
  # Initialize the tour
  tour.init()

  ### initialize the calendar
   -----------------------------------------------------------------
  ###

  date = new Date
  d = date.getDate()
  m = date.getMonth()
  y = date.getFullYear()
  $('#calendar').fullCalendar header:
    left: 'prev,next today'
    center: 'title'
    right: 'month,agendaWeek,agendaDay'
  editable: true
  return
