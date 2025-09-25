CLASS zcl_lab_34_student_ag2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: set_student IMPORTING iv_student TYPE string,
             get_student RETURNING VALUE(rv_student) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA name TYPE string.




ENDCLASS.



CLASS zcl_lab_34_student_ag2 IMPLEMENTATION.
  METHOD get_student.
    rv_student = me->name.
  ENDMETHOD.

  METHOD set_student.
    me->name = iv_student.
  ENDMETHOD.

ENDCLASS.
