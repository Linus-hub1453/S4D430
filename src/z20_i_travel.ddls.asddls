@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS VIew Travel Interface'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
define view entity Z20_i_Travel as select from Z20_i_Connection inner join Z20_i_Flight on Z20_i_Connection.ConnectionId = Z20_i_Flight.ConnectionId
{
  key Z20_i_Connection.CarrierId,
  key Z20_i_Connection.ConnectionId,
  key Z20_i_Flight.FlightDate,
  Z20_i_Connection.AirportFromId,
  Z20_i_Connection.AirportToId,
  Z20_i_Connection.DepartureTime,
  Z20_i_Connection.ArrivalTime,
  Z20_i_Connection.Distance,
  Z20_i_Connection.DistanceUnit,
  Z20_i_Flight.Price,
  Z20_i_Flight.CurrencyCode,
  Z20_i_Flight.PlaneTypeId,
  Z20_i_Flight.SeatsMax,
  Z20_i_Flight.SeatsOccupied
}
