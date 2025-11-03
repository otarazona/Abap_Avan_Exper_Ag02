CLASS zcx_lab_52_operations_ag2 DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_t100_message .
    INTERFACES if_t100_dyn_msg .

    CONSTANTS:
      BEGIN OF no_execute ,
        msgid TYPE symsgid VALUE 'ZMC_MESSAJE_AG2',
        msgno TYPE symsgno VALUE '001',
        attr1 TYPE scx_attrname VALUE ' no_execut ',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF no_execute .

    CONSTANTS:
      BEGIN OF no_access ,
        msgid TYPE symsgid VALUE 'ZMC_MESSAJE_AG2',
        msgno TYPE symsgno VALUE '002',
        attr1 TYPE scx_attrname VALUE ' no_acces ',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF no_access .

    DATA: no_execut TYPE string,
          no_acces  TYPE string.


    METHODS constructor
      IMPORTING
        !textid      LIKE if_t100_message=>t100key OPTIONAL
        !previous    LIKE previous OPTIONAL
        iv_no_execut TYPE string OPTIONAL
        iv_no_access TYPE string OPTIONAL.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcx_lab_52_operations_ag2 IMPLEMENTATION.


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

    me->no_execut = iv_no_execut.
    me->no_acces = iv_no_access.

  ENDMETHOD.
ENDCLASS.
