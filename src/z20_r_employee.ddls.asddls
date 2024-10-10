@AbapCatalog.viewEnhancementCategory: [#NONE]
@AbapCatalog.dataMaintenance: #RESTRICTED

@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'employee view'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
  serviceQuality: #D,
  // small size
  sizeCategory: #M,
  dataClass: #MASTER
}
define view entity Z20_R_Employee
  as select from z20employ association[1..1] to Z20_R_DEPARTEMENT as _Departement on $projection.DepartmentId = _Departement.Id
{
  key employee_id           as EmployeeId,
      first_name            as FirstName,
      last_name             as LastName,
      birth_date            as BirthDate,
      entry_date            as EntryDate,
      departement_id as DepartmentId,
      @Semantics.amount.currencyCode : 'CurrencyCode'
      annual_salary as AnnualSalary,
      @EndUserText.label: 'Currency Key'
      currency_code as CurrencyCode,
      created_by            as CreatedBy,
      created_at            as CreatedAt,
      local_last_changed_by as LocalLastChangedBy,
      local_last_changed_at as LocalLastChangedAt,
      last_changed_at       as LastChangedAt,
      _Departement,
      1 as Integer1
}
