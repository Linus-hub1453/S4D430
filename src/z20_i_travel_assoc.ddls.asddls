@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'association i_travel'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
define view entity Z20_I_TRAVEL_ASSOC as select from Z20_i_Flight as f
association to Z20_i_Connection as _Connection
on $projection.CarrierId = _Connection.CarrierId and $projection.ConnectionId = _Connection.ConnectionId
{
   key f.CarrierId,
   key f.ConnectionId,
   key f.FlightDate,
   f.CurrencyCode,
   f.PlaneTypeId,
   f.SeatsMax,
   f.SeatsOccupied
}
