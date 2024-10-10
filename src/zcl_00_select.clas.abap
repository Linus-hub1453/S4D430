CLASS zcl_00_select DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_00_select IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA ls_z00_employ TYPE z00_employ.
    SELECT SINGLE FROM z00_employ
      FIELDS *
      WHERE employee_id = '2'
      "WHERE employee_id = '000002'
      INTO @ls_z00_employ.
    out->write( ls_z00_employ ).
    out->write( '2 =========================================' ).

    DATA ls_z00_employ2 TYPE z00_employ.
    SELECT FROM z00_employ
      FIELDS *
      ORDER BY employee_id
      INTO @ls_z00_employ2.

      out->write( ls_z00_employ2 ).

    ENDSELECT.
    out->write( '3 =========================================' ).

    DATA lt_z00_employ TYPE STANDARD TABLE OF z00_employ.
*    DATA ls_z00_employ3 TYPE z00_employ.
    DATA ls_z00_employ4 LIKE LINE OF lt_z00_employ.

    SELECT FROM z00_employ
      FIELDS *
      ORDER BY employee_id
      INTO TABLE @lt_z00_employ.
    out->write( lt_z00_employ ).
    out->write( '4 =========================================' ).

    "Massenzugriff zeilen- oder schlüsselbasiert.
    LOOP AT lt_z00_employ INTO ls_z00_employ4
*      FROM 3 TO 5.
      WHERE employee_id < 20.
      out->write( ls_z00_employ4 ).
    ENDLOOP.
    out->write( '5 =========================================' ).

    "Einzelzugriff
    ls_z00_employ4 = lt_z00_employ[ 3 ].
    out->write( ls_z00_employ4 ).
    out->write( lt_z00_employ[ 3 ]-employee_id ).
    ls_z00_employ4 = lt_z00_employ[ employee_id = 20 ].
    out->write( ls_z00_employ4 ).

    ls_z00_employ4 = VALUE #( lt_z00_employ[ 300 ] OPTIONAL ).


    TYPES tt_hash TYPE HASHED TABLE OF z00_employ
                  WITH UNIQUE KEY employee_id.

    TYPES tt_sorted TYPE SORTED TABLE OF z00_employ
                  WITH NON-UNIQUE KEY entry_date birth_date.

    DATA lt_ddic_tt TYPE z00_tabletype.

*    DATA lt_ddic_tt2 TYPE STANDARD TABLE OF z00_tabletype.



  ENDMETHOD.

ENDCLASS.
