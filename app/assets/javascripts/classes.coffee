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




  return

window.onload = ->
  #=====================================
  # Charts
  #=====================================
  # bar chart
  barData =
    labels: [
      'Midterm 1'
      'Homework 1'
      'Midterm 2'
    ]
    datasets: [
      {
        label: 'Lowest'
        backgroundColor: 'rgba(220, 220, 220, 0.5)'
        pointBorderColor: '#fff'
        data: [
          23
          12
          35
        ]
      }
      {
        label: 'Highest'
        backgroundColor: 'rgba(26,179,148,0.5)'
        borderColor: 'rgba(26,179,148,0.7)'
        pointBackgroundColor: 'rgba(26,179,148,1)'
        pointBorderColor: '#fff'
        data: [
          99
          90
          92
        ]
      }
      {
        label: 'Average'
        backgroundColor: 'rgba(27,150,254, 0.8)'
        borderColor: 'rgba(38,133,252, 0.8)'
        pointBackgroundColor: 'rgba(26,179,148,1)'
        pointBorderColor: '#fff'
        data: [
          61
          57
          81
        ]
      }
    ]
  barOptions = responsive: true
  ctx2 = document.getElementById('barChart').getContext('2d')
  new Chart(ctx2,
    type: 'bar'
    data: barData
    options: barOptions)

  # Pie chart
  doughnutData =
    labels: [
      '0-20'
      '20-40'
      '40-60'
      '60-80'
      '80-100'
    ]
    datasets: [ {
      data: [
        2
        5
        12
        6
        8
      ]
      backgroundColor: [
        '#a3e1d4'
        '#dedede'
        '#c8b8cf'
        '#d9b8cf'
        '#f1b8cf'
      ]
    } ]
  doughnutOptions = responsive: true
  ctx4 = document.getElementById('doughnutChart').getContext('2d')
  new Chart(ctx4,
    type: 'doughnut'
    data: doughnutData
    options: doughnutOptions)
  return
