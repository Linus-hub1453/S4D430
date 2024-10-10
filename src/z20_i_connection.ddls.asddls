@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for the connection interface'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
define view entity Z20_i_Connection as select from /dmo/connection
{
  key carrier_id as CarrierId,
  key connection_id as ConnectionId,
  airport_from_id as AirportFromId,
  airport_to_id as AirportToId,
  departure_time as DepartureTime,
  arrival_time as ArrivalTime,
  distance as Distance,
  distance_unit as DistanceUnit
}
