@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee view 2'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
  serviceQuality: #D,
  sizeCategory: #M,
  dataClass: #MASTER
}
define view entity Z20_C_Employee
  as select from Z20_R_Employee
{
   key EmployeeId,
   FirstName,
   LastName,
   BirthDate,
   EntryDate,
   AnnualSalary,
   CurrencyCode,
   CreatedBy,
   CreatedAt,
   LocalLastChangedBy,
   LocalLastChangedAt,
   LastChangedAt
}
