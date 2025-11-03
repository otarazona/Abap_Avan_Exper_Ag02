*"* use this source file for your ABAP unit test classes

CLASS ltcl_test_inj DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PUBLIC SECTION.

  INTERFACES IF_ABAP_DB_WRITER PARTIALLY IMPLEMENTED.

  PRIVATE SECTION.
    METHODS:
      GET_TRAVEL_test FOR TESTING RAISING cx_static_check.

    CLASS-METHODS class_setup.
    CLASS-METHODS class_teardown.

    METHODS setup.
    METHODS teardown.

    DATA mo_cut TYPE REF TO zcl_lab_61_travel_ag2.

ENDCLASS.


CLASS ltcl_test_inj IMPLEMENTATION.

  METHOD get_travel_test.

    me->mo_cut->get_travel( IMPORTING es_travel = data(ls_travel) ).
    IF cl_abap_unit_assert=>assert_equals( EXPORTING act = |{ ls_travel-travel_id }--{ ls_travel-customer_id }|
                                                     exp = '00000022--000540' ) EQ Abap_true.
      cl_abap_unit_assert=>fail( 'GET TRAVEL process zcl_lab_61_travel_ag2--->get_travel' ).

    ENDIF.
  ENDMETHOD.

  METHOD class_setup.

  ENDMETHOD.

  METHOD class_teardown.

  ENDMETHOD.

  METHOD setup.

    me->mo_cut = NEW zcl_lab_61_travel_ag2(  ).

    TEST-INJECTION select_travel.

    lv_travel = '00000022'.
    ls_travel-travel_id = lv_travel.
    ls_travel-customer_id = '000540'.

    end-TEST-INJECTION.

  ENDMETHOD.

  METHOD teardown.

    CLEAR me->mo_cut.

  ENDMETHOD.

ENDCLASS.
