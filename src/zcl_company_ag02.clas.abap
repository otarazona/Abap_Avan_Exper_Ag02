CLASS zcl_company_ag02 DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS add_product IMPORTING iv_product TYPE string.



  PROTECTED SECTION.

    METHODS set_company IMPORTING iv_comp_code TYPE string.
    METHODS get_company RETURNING VALUE(rv_comp_code) TYPE string.

  PRIVATE SECTION.

    DATA company TYPE string.

ENDCLASS.



CLASS zcl_company_ag02 IMPLEMENTATION.
  METHOD get_company.

    rv_comp_code = me->company.

  ENDMETHOD.

  METHOD set_company.

    me->company = iv_comp_code.

  ENDMETHOD.

  METHOD add_product.

  ENDMETHOD.

ENDCLASS.
