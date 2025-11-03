CLASS zcl_lab_60_test_calc_ag2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PUBLIC SECTION.

    "! @testing zcl_lab_59_calculator_ag2
     METHODS sum_up_test FOR TESTING. " UTM - Unit Test Method

  PROTECTED SECTION.
  PRIVATE SECTION.

    METHODS setup.
    METHODS teardown.


    DATA mo_cut TYPE REF TO zcl_lab_59_calculator_ag2. " CUT - Class Under Test
ENDCLASS.



CLASS zcl_lab_60_test_calc_ag2 IMPLEMENTATION.

  METHOD setup.

    mo_cut = NEW zcl_lab_59_calculator_ag2(  ).

  ENDMETHOD.


  METHOD sum_up_test.

    DATA(lv_result) = mo_cut->sum_up( iv_num1 = 3 iv_num2 = 7 ).

    DATA(lv_resultad) = mo_cut->sum_up( iv_num1 = 4 iv_num2 = 7 ).
    cl_abap_unit_assert=>assert_equals(
      act = lv_resultad
      exp = 11
      msg = 'Error en suma' ).


  ENDMETHOD.


  METHOD teardown.
    CLEAR mo_cut.

  ENDMETHOD.

ENDCLASS.
