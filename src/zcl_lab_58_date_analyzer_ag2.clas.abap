CLASS zcl_lab_58_date_analyzer_ag2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS ANALYZE_DATE IMPORTING io_previus TYPE REF TO cx_root OPTIONAL
                        RAISING zcx_lab_56_no_date_ag2.
  METHODS ANALYZE_FORMAT IMPORTING io_previus TYPE REF TO cx_root OPTIONAL
                        RAISING zcx_lab_57_format_unknown_ag2.


  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_lab_58_date_analyzer_ag2 IMPLEMENTATION.
  METHOD analyze_date.

  RAISE EXCEPTION TYPE zcx_lab_56_no_date_ag2
    EXPORTING
      previous   = io_previus.
*      textid     = zcx_lab_56_no_date_ag2=>no_date.




  ENDMETHOD.

  METHOD analyze_format.

  RAISE EXCEPTION TYPE zcx_lab_57_format_unknown_ag2
    EXPORTING
     previous   = io_previus.

    ENDMETHOD.

ENDCLASS.
