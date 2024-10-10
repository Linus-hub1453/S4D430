@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
define view entity Z20_C_EMPLOYEEQUERYP 
with parameters
  p_target_curr : /dmo/currency_code,
  @EndUserText.label: 'Date of evaluation'
  @Environment.systemField: #SYSTEM_DATE
  p_date : abap.dats
as select from Z20_R_Employee
{
   key EmployeeId,
   FirstName,
   LastName,
   DepartmentId,
   _Departement.Description as DepartmentDescription,
   EntryDate,
   
//   _Departement._Assistant.LastName as AssistantName,
   concat_with_space(_Departement._Assistant.LastName, _Departement._Assistant.FirstName, 1) as AssistantName,
   
   
   _Departement,
   
   case EmployeeId
   when _Departement.HeadId then 'H'
   when _Departement.AssistantId then 'A'
   else ' '
   end as EmployeeRole,
   
   @Semantics.amount.currencyCode: 'CurrencyCodeUSD'
   currency_conversion(amount => AnnualSalary,
                       source_currency => CurrencyCode,
                       target_currency =>  $projection.CurrencyCodeUSD,
                       exchange_rate_date => $parameters.p_date) as AnnualSalaryConverted,
   cast( $projection.AnnualSalaryConverted as abap.fltp ) / 12.0 as MonthlySalaryConverted,
//   cast( 'USD' as abap.cuky) as CurrencyCodeUSD,
   $parameters.p_target_curr as CurrencyCodeUSD,
   division(dats_days_between(EntryDate, $parameters.p_date), 365, 1) as CompanyAffiliation
    
}
