// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require_tree .

var ejes
var casetas

$(document).on('turbolinks:load', function () {
  
  $('#vehicle_select').on('change', function(evt){
    vehicle_id = $(this).val();
    data = $.get(`vehicles/${vehicle_id}.json`, function (data) {
      $('#vehicleInfo').html('')
      ejes = data.edges
      html = `
        <div>
        <strong>Ejes:</strong> <span>${ejes}</span> | <strong>Pago ida:</strong> <span>${data.payment}</span> | <strong>Pago regreso:</strong> <span>${data.return_payment}</span>
        <div>
      `
      $('#vehicleInfo').html(html)
    })
  });


  $('#route_select').on('change', function(evt){
    route_id = $(this).val();
    data = $.get(`routes/${route_id}.json`, function (data) {
      $('#routeInfo').html('') 
      if( ejes >= 2 && ejes <= 4){
        casetas = data.tollbooths_2_to_4_edges
        html = `
          <div>
          <strong>Peaje 2-4 ejes:</strong> <span>${casetas}</span> | <strong>Distancia:</strong> <span>${data.distance}km</span>
          <div>
        `
      } else if( ejes >= 5 && ejes <= 6 ){
        casetas = data.tollbooths_5_to_6_edges
        html = `
          <div>
            <strong>Peaje 5-6 ejes:</strong> <span>${casetas}</span> | <strong>Distancia:</strong> <span>${data.distance}km</span>
          <div>
        `
      }
      $('#routeInfo').html(html)
    })
  });


});