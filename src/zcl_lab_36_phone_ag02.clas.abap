CLASS zcl_lab_36_phone_ag02 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS constructor IMPORTING io_phone TYPE REF TO zcl_lab_37_screen_ag02.

    METHODS get_screen RETURNING VALUE(ro_screen) TYPE REF TO zcl_lab_37_screen_ag02.



  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA phone TYPE REF TO zcl_lab_37_screen_ag02.


ENDCLASS.



CLASS zcl_lab_36_phone_ag02 IMPLEMENTATION.
  METHOD constructor.

    me->phone = io_phone.

  ENDMETHOD.

  METHOD get_screen.

  ro_screen = me->phone.

  ENDMETHOD.

ENDCLASS.
