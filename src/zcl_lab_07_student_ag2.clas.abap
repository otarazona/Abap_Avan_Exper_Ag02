CLASS zcl_lab_07_student_ag2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA birth_date TYPE zdate VALUE '20250825' READ-ONLY.

    METHODS set_BIRTH_DATE IMPORTING iv_date TYPE zdate.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_07_student_ag2 IMPLEMENTATION.

  METHOD set_birth_date.

    birth_date = iv_date.

  ENDMETHOD.

ENDCLASS.
