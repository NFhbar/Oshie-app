# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#= require dataTables/datatables.min.js
#= require footable/footable.all.min.js
#= require nestable/jquery.nestable.js
#= require iCheck/icheck.min.js
#= require touchspin/jquery.bootstrap-touchspin.min.js

$(document).ready ->
  #Table for my evaluations page
  $('.footable').footable()

  # nestable list for new evaluations page
  $('#nestable2').nestable(group: 1)

  $('#nestable-menu').on 'click', (e) ->
    target = $(e.target)
    action = target.data('action')
    if action == 'expand-all'
      $('.dd').nestable 'expandAll'
    if action == 'collapse-all'
      $('.dd').nestable 'collapseAll'
    return


  $('.i-checks').iCheck
    checkboxClass: 'icheckbox_square-green'
    radioClass: 'iradio_square-green'

  $('#data_1 .input-group.date').datepicker
    todayBtn: 'linked'
    keyboardNavigation: false
    forceParse: false
    calendarWeeks: true
    autoclose: true

  $('.touchspin3').TouchSpin
    verticalbuttons: true
    buttondown_class: 'btn btn-white'
    buttonup_class: 'btn btn-white'

  return
