@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Department Consumption View'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
define view entity Z20_C_DEPARTMENTQUERY
with parameters 
p_target_curr : /dmo/currency_code,
@EndUserText.label: 'Date of evaluation'
@Environment.systemField: #SYSTEM_DATE
p_date : abap.dats
  as select from Z20_C_EMPLOYEEQUERYP(p_target_curr: $parameters.p_target_curr,
p_date: $parameters.p_date) as e right outer join Z20_R_DEPARTEMENT as d on e.DepartmentId = d.Id
{
   
  d.Id,
  d.Description,
  avg( e.CompanyAffiliation as abap.dec(11,1) ) as
  AverageAffiliation,
  @Semantics.amount.currencyCode: 'CurrencyCodeUSD'
  sum( e.AnnualSalaryConverted ) as TotalSalary,
  e.CurrencyCodeUSD
   
} group by d.Id,
d.Description,
e.CurrencyCodeUSD
