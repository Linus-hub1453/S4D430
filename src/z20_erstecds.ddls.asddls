@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Linus Kronenberger'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
define view entity Z20_ersteCDS
  as select from z20employ
{
  key employee_id           as EmployeeId,
      first_name            as FirstName,
      last_name             as LastName,
      birth_date            as BirthDate,
      entry_date            as EntryDate,
      @Semantics.amount.currencyCode : 'CurrencyCode'
      annual_salary         as AnnualSalary,
      currency_code         as CurrencyCode,
      created_by            as CreatedBy,
      created_at            as CreatedAt,
      local_last_changed_by as LocalLastChangedBy,
      local_last_changed_at as LocalLastChangedAt,
      last_changed_at       as LastChangedAt
}
