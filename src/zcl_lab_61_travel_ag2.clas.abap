CLASS zcl_lab_61_travel_ag2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS GET_TRAVEL EXPORTING es_travel TYPE /dmo/travel.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_61_travel_ag2 IMPLEMENTATION.
  METHOD get_travel.

  DATA: ls_travel TYPE /dmo/travel,
        lv_travel type /dmo/travel_id.

    lv_travel = '00000018'.

    SELECT SINGLE from /dmo/travel
    FIELDS *
    WHERE travel_id eq @lv_travel
    into @es_travel.

    TEST-SEAM select_travel.

    SELECT SINGLE from /dmo/travel
    FIELDS *
    WHERE travel_id eq @lv_travel
    into @ls_travel.

    end-TEST-SEAM.

    IF lv_travel eq '00000022'.

    es_travel = CORRESPONDING #( ls_travel ).


    ENDIF.

  ENDMETHOD.

ENDCLASS.
