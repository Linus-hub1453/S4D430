@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Aggregatfunktionen in cds view'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
define view entity Z20_I_AGGREGAT as select from Z20_i_Travel
{
  key CarrierId as Fluggesellschaft,
  min ( Distance ) as Minimale_Distanz
}group by CarrierId
