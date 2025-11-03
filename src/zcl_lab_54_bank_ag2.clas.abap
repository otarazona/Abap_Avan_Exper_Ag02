CLASS zcl_lab_54_bank_ag2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

METHODS:
      transfer
        IMPORTING
          iv_iban TYPE string
        RAISING
          RESUMABLE(zcx_lab_55_auth_iban_ag2).
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_54_bank_ag2 IMPLEMENTATION.
  METHOD transfer.

   "Simulamos validación del IBAN
    IF iv_iban = 'ES95 4329 8765 4321'.
      RAISE RESUMABLE EXCEPTION TYPE zcx_lab_55_auth_iban_ag2
        EXPORTING
          textid = zcx_lab_55_auth_iban_ag2=>auth_iban.

    ENDIF.

  ENDMETHOD.

ENDCLASS.
