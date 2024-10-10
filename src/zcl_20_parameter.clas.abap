CLASS zcl_20_parameter DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_20_PARAMETER IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    SELECT
      FROM Z20_C_EmployeeQueryP(
        " Set Parameters in ABAP SQL
        p_target_curr = 'JPY' )
        "p_date = @sy-datum )
      FIELDS employeeid,
          firstname,
          lastname,
          departmentid,
          departmentdescription,
          assistantname,
          \_departement\_head-lastname AS headname,
          MonthlySalaryConverted,
          CurrencyCodeUSD,
          CompanyAffiliation
      INTO TABLE @DATA(result).

    out->write( result ).

  ENDMETHOD.
ENDCLASS.
