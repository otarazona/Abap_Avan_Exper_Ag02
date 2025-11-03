CLASS zcx_lab_55_auth_iban_ag2 DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_t100_message .
    INTERFACES if_t100_dyn_msg .

CONSTANTS:
      BEGIN OF auth_iban ,
        msgid TYPE symsgid VALUE 'ZMC_MESSAJE_AG2',
        msgno TYPE symsgno VALUE '003',
        attr1 TYPE scx_attrname VALUE ' aut_iban ',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF auth_iban .

       DATA: aut_iban TYPE string.



    METHODS constructor
      IMPORTING
        !textid      LIKE if_t100_message=>t100key OPTIONAL
        !previous    LIKE previous OPTIONAL
        iv_aut_iban TYPE string OPTIONAL.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcx_lab_55_auth_iban_ag2 IMPLEMENTATION.

 METHOD constructor ##ADT_SUPPRESS_GENERATION.
    super->constructor(
    previous = previous
    ).
    CLEAR me->textid.
    IF textid IS INITIAL.
      if_t100_message~t100key = if_t100_message=>default_textid.
    ELSE.
      if_t100_message~t100key = textid.
    ENDIF.

    me->aut_iban = iv_aut_iban.

  ENDMETHOD.


ENDCLASS.
