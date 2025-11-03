*"* use this source file for your ABAP unit test classes

class ltcl_Calculator_AG2 definition final for testing
  duration short
  risk level harmless.

  private section.
    methods:
      first_test for testing raising cx_static_check.

     METHODS setup.
    METHODS teardown.


    DATA mo_cut TYPE REF TO zcl_lab_59_calculator_ag2. " CUT - Class Under Test

endclass.


class ltcl_calculator_ag2 implementation.

  method first_test.

    DATA(lv_result) = mo_cut->sum_up( iv_num1 = 3 iv_num2 = 7 ).

    DATA(lv_resultad) = mo_cut->sum_up( iv_num1 = 4 iv_num2 = 7 ).
   if cl_abap_unit_assert=>assert_equals(
      act = lv_resultad
      exp = 11
      msg = 'Error en suma' ) eq abap_true.

    cl_abap_unit_assert=>fail( 'El resultado es erroneo' ).

    ENDIF.
  endmethod.

  method setup.

   mo_cut = NEW zcl_lab_59_calculator_ag2(  ).

  endmethod.

  method teardown.

   CLEAR mo_cut.

  endmethod.

endclass.
