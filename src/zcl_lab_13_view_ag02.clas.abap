CLASS zcl_lab_13_view_ag02 DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS constructor IMPORTING iv_view_type TYPE string.

  PROTECTED SECTION.

  DATA VIEW_TYPE TYPE string.
  DATA box TYPE string.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_13_view_ag02 IMPLEMENTATION.
  METHOD constructor.

  me->view_type = iv_view_type.

  ENDMETHOD.

ENDCLASS.
