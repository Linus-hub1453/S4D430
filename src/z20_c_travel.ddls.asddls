@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View Travel'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
define view entity Z20_c_Travel as select from Z20_i_Travel
{
  key CarrierId,
  key ConnectionId,
  key FlightDate,
  AirportFromId,
  AirportToId,
  DepartureTime,
  ArrivalTime,
  Distance,
  DistanceUnit,
  Price,
  CurrencyCode,
  PlaneTypeId,
  SeatsMax,
  SeatsOccupied
}
