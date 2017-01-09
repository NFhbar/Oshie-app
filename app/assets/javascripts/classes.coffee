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
  return
