# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#= require bootstrapTour/bootstrap-tour.min.js

$(document).ready ->
  # Instance the tour
  tour = new Tour(steps: [
    {
      path: '/home/minor'
      element: '#step1'
      title: 'Welcome to your Oshie Dashboard'
      content: 'This is your main Dashboard. From here you can access all your Oshie tools and options as well as all important notifications.'
      placement: 'top'
    }
    {
      element: '#step2'
      title: 'Your Messages'
      content: 'Here you can see the messages from students in your classes.'
      placement: 'top'
    }
    {
      element: '#step3'
      title: 'Your Notifications'
      content: 'Access your notifications from your classes and students.
      Keep track of assignment due dates, student activity, and more!'
      placement: 'top'
    }
    {
      element: '#step4'
      title: 'Your Classes'
      content: 'View and manage your active Classes. Lets take a look!'
      placement: 'top'
    }
    {
      path: '/classes/myClasses'
      element: '#step5'
      title: 'These are your current classes'
      content: 'You can view and edit your current classes.'
      placement: 'top'
    }
    {
      element: '#step6'
      title: 'New Class'
      content: 'You can easily create a new class. Lets try it!'
      placement: 'left'
    }
  ])
  # Initialize the tour
  tour.init()
  $('.startTour').click ->
    tour.restart()
    # Start the tour
    # tour.start();
    return



  return
