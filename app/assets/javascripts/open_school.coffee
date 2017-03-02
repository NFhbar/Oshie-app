# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#= require slick/slick.min.js

$(document).ready ->

  $('.slider').slick
    slidesToShow: 1
    autoplay: true
    autoplaySpeed: 5000
    dots: true
    infinite: true
    speed: 300
    fade: true


  return
