@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for the flight Interface'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
define view entity Z20_i_Flight as select from /dmo/flight
{
   key carrier_id as CarrierId,
   key connection_id as ConnectionId,
   key flight_date as FlightDate,
   price as Price,
   currency_code as CurrencyCode,
   plane_type_id as PlaneTypeId,
   seats_max as SeatsMax,
   seats_occupied as SeatsOccupied
}
