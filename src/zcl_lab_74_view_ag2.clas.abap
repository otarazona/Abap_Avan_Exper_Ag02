CLASS zcl_lab_74_view_ag2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS disp_flights IMPORTING it_flights TYPE /dmo/t_flight
                                    io_out TYPE REF TO if_oo_adt_classrun_out.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_74_view_ag2 IMPLEMENTATION.

  METHOD disp_flights.
   io_out->write( it_flights ).
  ENDMETHOD.

ENDCLASS.
