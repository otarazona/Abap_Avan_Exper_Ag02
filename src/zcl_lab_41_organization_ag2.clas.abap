CLASS zcl_lab_41_organization_ag2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:

     set_headquarters IMPORTING iv_headquart TYPE string,
     get_headquarters RETURNING VALUE(rv_headquart) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA headquarters TYPE string.

ENDCLASS.



CLASS zcl_lab_41_organization_ag2 IMPLEMENTATION.
  METHOD set_headquarters.
     me->headquarters = iv_headquart.
  ENDMETHOD.

  METHOD get_headquarters.
    rv_headquart = me->headquarters.
  ENDMETHOD.

ENDCLASS.
