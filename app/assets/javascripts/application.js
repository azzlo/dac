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

const COMIDA = 150 // Costo de la comida por día
var ejes
var casetas
var dias
var distancia
var pago_por_km
var pago_conduccion
var rendimiento_por_km
var costo_combustible_litro
var litros_necesarios
var resumen_combustible
var resumen_comida
var resumen_operacion

$(document).on('turbolinks:load', function () {
  
  $('#vehicle_select').on('change', function(evt){
    vehicle_id = $(this).val();
    data = $.get(`vehicles/${vehicle_id}.json`, function (data) {
      $('#vehicleInfo').html('')
      ejes = data.edges
      pago_por_km = parseFloat(data.payment) + parseFloat(data.return_payment)
      rendimiento_por_km = parseFloat(data.performance_km_fuel)
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
      // dias = data.days
      distancia = parseFloat(data.distance)
      pago_conduccion = pago_por_km * distancia
      litros_necesarios = distancia / rendimiento_por_km
      if( ejes >= 2 && ejes <= 4){
        casetas = parseFloat(data.tollbooths_2_to_4_edges)
        html = `
          <div>
          <strong>Peaje 2-4 ejes:</strong> <span>${casetas}</span> | <strong>Distancia:</strong> <span>${data.distance}km</span>
          <div>
        `
      } else if( ejes >= 5 && ejes <= 6 ){
        casetas = parseFloat(data.tollbooths_5_to_6_edges)
        html = `
          <div>
            <strong>Peaje 5-6 ejes:</strong> <span>${casetas}</span> | <strong>Distancia:</strong> <span>${data.distance}km</span>
          <div>
        `
      }
      $('#resumeDistance').html(`$${pago_conduccion.toFixed(2)}`)
      $('#resumeTollbooths').html(`$${parseFloat(casetas).toFixed(2)}`)
      $('#routeInfo').html(html)
      $('#routeLiters').html(`${litros_necesarios.toFixed(1)} litros`)
    })
  });

  $('#calcButton').on('click', function(evt){
    evt.preventDefault();
    dias = $('#days').val()
    costo_combustible_litro = parseFloat($('#fuel_by_liter').val())
    // litros_necesarios = distancia / rendimiento_por_km
    resumen_combustible = litros_necesarios * costo_combustible_litro
    resumen_comida = dias * COMIDA
    resumen_operacion = pago_conduccion + casetas + resumen_comida + resumen_combustible
    console.log(resumen_operacion)
    $('#resumeFood').html( '$' + resumen_comida.toFixed(2) )
    $('#resumeFuel').html( '$' + resumen_combustible.toFixed(2) )
    $('#resumeOperation').html( `$${ (resumen_operacion).toFixed(2)}`)
  });

});