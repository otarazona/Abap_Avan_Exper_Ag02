CLASS zcl_lab_62_context_patr_ag2 DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE .

  PUBLIC SECTION.

  DATA mv_time TYPE uzeit.
  METHODS constructor.

  CLASS-METHODS get_intance
        RETURNING VALUE(ro_instance) TYPE REF TO zcl_lab_62_context_patr_ag2.


  PROTECTED SECTION.
  PRIVATE SECTION.

  CLASS-DATA mo_instance TYPE REF TO zcl_lab_62_context_patr_ag2.
ENDCLASS.



CLASS zcl_lab_62_context_patr_ag2 IMPLEMENTATION.
  METHOD get_intance.

if mo_instance is not BOUND.
   mo_instance = NEW #(  ).
   ro_instance = mo_instance.

ENDIF.





  ENDMETHOD.

  METHOD constructor.

 me->mv_time = cl_abap_context_info=>get_system_time(  ).

  ENDMETHOD.

ENDCLASS.
