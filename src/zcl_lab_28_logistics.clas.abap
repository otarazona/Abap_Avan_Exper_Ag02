CLASS zcl_lab_28_logistics DEFINITION INHERITING FROM zcl_lab_27_factory_agr2
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: production_line REDEFINITION,
             input_products REDEFINITION.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_28_logistics IMPLEMENTATION.
  METHOD input_products.

    rv_input = 'input_product'.

  ENDMETHOD.

  METHOD production_line.

    rv_production = 'production_line'.

  ENDMETHOD.

ENDCLASS.
