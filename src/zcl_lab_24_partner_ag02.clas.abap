CLASS zcl_lab_24_partner_ag02 DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS GET_COMPANY_CAPITAL RETURNING VALUE(rv_compCap) TYPE string.
  PROTECTED SECTION.

  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_24_partner_ag02 IMPLEMENTATION.
  METHOD get_company_capital.

  DATA(lo_company) = NEW zcl_lab_23_company_ag02(  ).
  lo_company->capital = 'Capital1'.


  ENDMETHOD.

ENDCLASS.
