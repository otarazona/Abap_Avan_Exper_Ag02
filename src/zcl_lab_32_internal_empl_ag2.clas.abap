CLASS zcl_lab_32_internal_empl_ag2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_lab_04_employee_ag2 .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_32_internal_empl_ag2 IMPLEMENTATION.


  METHOD zif_lab_04_employee_ag2~get_employees_count.

  rv_emp = 'EMPLOYEE 1'.

  ENDMETHOD.
ENDCLASS.
