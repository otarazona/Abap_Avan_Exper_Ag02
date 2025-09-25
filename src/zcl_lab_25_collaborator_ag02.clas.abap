CLASS zcl_lab_25_collaborator_ag02 DEFINITION INHERITING FROM zcl_lab_24_partner_ag02
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS get_capital RETURNING VALUE(rv_capital) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_25_collaborator_ag02 IMPLEMENTATION.
  METHOD get_capital.

   DATA(lo_company) = NEW zcl_lab_23_company_ag02(  ).
  lo_company->capital = 'Capital2'.

  ENDMETHOD.

ENDCLASS.
