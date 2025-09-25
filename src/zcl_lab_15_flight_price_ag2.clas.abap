CLASS zcl_lab_15_flight_price_ag2 DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  DATA mt_flights TYPE TABLE of /DMO/FLIGHT.

  METHODS add_price IMPORTING iv_add_price TYPE /DMO/FLIGHT.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_15_flight_price_ag2 IMPLEMENTATION.
  METHOD add_price.



  APPEND iv_add_price to mt_flights.

  ENDMETHOD.

ENDCLASS.
