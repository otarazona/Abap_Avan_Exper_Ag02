CLASS zcl_lab_09_account_ag2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS: set_iban IMPORTING iv_iban TYPE string,
           get_iban EXPORTING ev_iban TYPE string.


  PROTECTED SECTION.
  PRIVATE SECTION.

  DATA IBAN TYPE string.

ENDCLASS.



CLASS zcl_lab_09_account_ag2 IMPLEMENTATION.
  METHOD get_iban.

  ev_iban = me->iban.

  ENDMETHOD.

  METHOD set_iban.

 me->iban = iv_iban.

  ENDMETHOD.

ENDCLASS.
