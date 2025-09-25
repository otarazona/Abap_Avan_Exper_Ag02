CLASS zcl_lab_17_super_discount_ag02 DEFINITION INHERITING FROM zcl_lab_16_price_discount_ag02
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS add_price REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_17_super_discount_ag02 IMPLEMENTATION.
  METHOD add_price.

    DATA(ls_flight) = iv_add_price.
    ls_flight-price = ls_flight-price * 8 / 10. " 20% off
    APPEND ls_flight TO me->mt_flights.



  ENDMETHOD.

ENDCLASS.
