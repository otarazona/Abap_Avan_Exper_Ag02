CLASS zcl_lab_11_system_ag02 DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  data ARCHITECTURE TYPE string VALUE '64 bts'.

  METHODS get_architecture RETURNING VALUE(rv_architecture) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_11_system_ag02 IMPLEMENTATION.
  METHOD get_architecture.

rv_architecture = architecture.

  ENDMETHOD.

ENDCLASS.
