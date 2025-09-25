CLASS zcl_lab_04_person_ag02 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.


 METHODS:  set_AGE IMPORTING iv_AGE TYPE string,
           get_AGE EXPORTING ev_AGE TYPE string.


  PROTECTED SECTION.
  PRIVATE SECTION.

  DATA: AGE TYPE c LENGTH 2.


ENDCLASS.



CLASS zcl_lab_04_person_ag02 IMPLEMENTATION.
  METHOD get_age.

  ev_age = age.

  ENDMETHOD.

  METHOD set_age.

  me->age = iv_age.

  ENDMETHOD.

ENDCLASS.
