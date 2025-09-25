CLASS zcl_lab_03_contract_ag02 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA cntr_type TYPE c LENGTH 2.

    METHODS: set_creation_date IMPORTING iv_creation_date TYPE zdate .

  PROTECTED SECTION.

    DATA creation_date TYPE zdate.

  PRIVATE SECTION.

    DATA client TYPE zdate.

ENDCLASS.



CLASS zcl_lab_03_contract_ag02 IMPLEMENTATION.
  METHOD set_creation_date.

  ENDMETHOD.

ENDCLASS.
