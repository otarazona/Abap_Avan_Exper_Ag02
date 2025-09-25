CLASS zcl_lab_05_flight_ag2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS get_flight IMPORTING iv_carrier_ID  TYPE string
                                 iv_connid_ID   TYPE string
                       RETURNING VALUE(rv_bool) TYPE abap_bool.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_05_flight_ag2 IMPLEMENTATION.
  METHOD get_flight.

    rv_bool = abap_false.

    SELECT SINGLE carrier_id
         FROM /dmo/flight
         WHERE carrier_id = @iv_carrier_id
           AND connection_id = @iv_connid_id
         INTO @DATA(lv_carrier).

    IF sy-subrc = 0.
      rv_bool = abap_true.   " 'X'
    ENDIF.



  ENDMETHOD.

ENDCLASS.
