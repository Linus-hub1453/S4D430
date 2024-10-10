CLASS zcl_20_hello_world DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA linus TYPE i VALUE 10.
    DATA zahl1 TYPE p LENGTH 4 DECIMALS 2 VALUE '5.33'.
    DATA zahl2 TYPE p LENGTH 4 DECIMALS 2 VALUE '0'.
    DATA operation TYPE c VALUE '/'.
*    DATA BMW TYPE REF TO
ENDCLASS.



CLASS zcl_20_hello_world IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
*    TRY.
*      CASE operation.
*        WHEN '+'.
*          out->write( |Das Ergebnis lautet: { zahl1 + zahl2 }| ).
*        WHEN '-'.
*          out->write( |Das Ergebnis lautet: { zahl1 - zahl2 }| ).
*        WHEN '*'.
*          out->write( |Das Ergebnis lautet: { zahl1 * zahl2 }| ).
*        WHEN '/'.
*          out->write( |Das Ergebnis lautet: { zahl1 / zahl2 }| ).
*      ENDCASE.
*    CATCH cx_root INTO DATA(x).
*      out->write( x->get_text( ) ).
*      IF x->get_text(  ) = 'Division by zero'.
**         n/0
*        out->write( 'Annäherung von links' ).
*
*        out->write( 'Annäherung von rechts' ).
*      ENDIF.
*    ENDTRY.
*    DATA test TYPE z20_data_element.
*    test = 'Hello World'.
*    OUT->WRITE( test ).


*    SELECT SINGLE FROM z20employ
*    FIELDS *
*    WHERE employee_id = '000020'
*    INTO @DATA(x).
*
*    SELECT FROM z20employ
*    FIELDS *
*    INTO @DATA(y).
*    out->write( y ).
*    ENDSELECT.

*    TYPES tt_flights TYPE STANDARD TABLE OF /dmo/flight.
*    DATA lt_flights TYPE tt_flights.
*
*    DATA lt_flights2 TYPE STANDARD TABLE OF /dmo/flight.
*
*    SELECT FROM /dmo/flight FIELDS * INTO TABLE @lt_flights.

    TYPES employees TYPE STANDARD TABLE OF z20employ.
    DATA employee TYPE employees.
    SELECT FROM z20employ FIELDS * INTO TABLE @employee.
    out->write( employee ).


  ENDMETHOD.
ENDCLASS.
