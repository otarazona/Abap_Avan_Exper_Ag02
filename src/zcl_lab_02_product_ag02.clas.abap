CLASS zcl_lab_02_product_ag02 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: set_product      IMPORTING iv_product TYPE matnr,
             set_creationdate IMPORTING ccreation_date TYPE zdate.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA product TYPE matnr.
    DATA creation_date TYPE zdate.

ENDCLASS.



CLASS zcl_lab_02_product_ag02 IMPLEMENTATION.
  METHOD set_creationdate.

  ENDMETHOD.

  METHOD set_product.

  ENDMETHOD.

ENDCLASS.
