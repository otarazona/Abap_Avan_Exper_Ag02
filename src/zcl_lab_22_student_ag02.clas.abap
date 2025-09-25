CLASS zcl_lab_22_student_ag02 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS assign_student IMPORTING iv_ASSIGN_STUDENT TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_22_student_ag02 IMPLEMENTATION.
  METHOD assign_student.

*    DATA(lo_classroom) = NEW zcl_lab_21_classroom_ag2(  ).

  ENDMETHOD.

ENDCLASS.
