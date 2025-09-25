CLASS zcl_lab_16_price_discount_ag02 DEFINITION INHERITING FROM zcl_lab_15_flight_price_ag2
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.


  METHODS add_price REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_16_price_discount_ag02 IMPLEMENTATION.
  METHOD add_price.

data(lo_price) = iv_add_price.

lo_price-price = iv_add_price-price * 9 / 10 . " 10% off

APPEND iv_add_price to me->mt_flights.

  ENDMETHOD.

ENDCLASS.
