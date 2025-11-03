CLASS zcl_lab_66_travel_ag2 DEFINITION ABSTRACT
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS travel FINAL
      IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out.
  PROTECTED SECTION.

  DATA travel_p TYPE i.

  METHODS:  TRANSPORT_ONEWAY ABSTRACT IMPORTING iv_out TYPE REF TO if_oo_adt_classrun_out,
            DAY_ONE ABSTRACT IMPORTING iv_out TYPE REF TO if_oo_adt_classrun_out,
            DAY_TWO ABSTRACT IMPORTING iv_out TYPE REF TO if_oo_adt_classrun_out,
            DAY_THREE ABSTRACT IMPORTING iv_out TYPE REF TO if_oo_adt_classrun_out,
            TRANSPORT_RETURN ABSTRACT IMPORTING iv_out TYPE REF TO if_oo_adt_classrun_out.



  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_66_travel_ag2 IMPLEMENTATION.
  METHOD travel.


    io_out->write( |Iniciando el viaje...| ).
    transport_oneway( io_out ).
    day_one( io_out ).
    day_two( io_out ).
    day_three( io_out ).
    transport_return( io_out ).
    io_out->write( |Viaje finalizado.| ).

  ENDMETHOD.

ENDCLASS.
