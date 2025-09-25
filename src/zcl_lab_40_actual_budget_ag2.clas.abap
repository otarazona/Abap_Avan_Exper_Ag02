CLASS zcl_lab_40_actual_budget_ag2 DEFINITION INHERITING FROM zcl_lab_39_budget_ag02
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: get_budget REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_40_actual_budget_ag2 IMPLEMENTATION.
  METHOD get_budget.

rv_budget = 'Presupuesto 2025'.

  ENDMETHOD.

ENDCLASS.
