CLASS zcl_lab_10_constructor_ag02 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CLASS-DATA: log TYPE string.

    METHODS:
      constructor.

      CLASS-METHODS:
      class_constructor.



  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_10_constructor_ag02 IMPLEMENTATION.

  METHOD class_constructor.

  log = |{ Log } Statico Constructor--->|.

  ENDMETHOD.


  METHOD constructor.

    log = |{ Log } Instancia Constructor--->|.

  ENDMETHOD.





ENDCLASS.
