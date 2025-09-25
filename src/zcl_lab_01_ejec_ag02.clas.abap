CLASS zcl_lab_01_ejec_ag02 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .


  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_01_ejec_ag02 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

*    DATA: ms_object TYPE zcl_lab_06_elements_ag02=>ty_elem_objets.
*
*    DATA(lo_age) = NEW zcl_lab_04_person_ag02(  ).
*    DATA(lo_student) = NEW zcl_lab_07_student_ag2(  ).
*
*
*
*    lo_age->set_age( iv_age = '44' ).
*
*    lo_age->get_age(
*      IMPORTING
*        ev_age = DATA(lv_age) ).
*
*
**    out->write( |{ lv_age } - { 'years old' } | ).
*
*
*    DATA(lv_exists) = NEW zcl_lab_05_flight_ag2( ).
*    DATA(lo_elem) = NEW zcl_lab_06_elements_ag02( ).
*
*    lv_exists->get_flight(
*      EXPORTING
*        iv_carrier_id = 'SQ'
*        iv_connid_id  = '0012'
*      RECEIVING
*        rv_bool       = DATA(lv_valor) ).
*
*
*    IF lv_valor = abap_true.
*
**      out->write( |{ lv_valor } - { 'El vuelo existe en /DMO/FLIGHT.' } | ).
*
*    ELSE.
*
*      out->write( | 'El vuelo NO existe.' | ).
*    ENDIF.
*
*
*    "CONSTANTES
*
**    out->write( zcl_lab_06_elements_ag02=>cv_currency_usd ).
**    out->write( zcl_lab_06_elements_ag02=>cv_marca ).
**    out->write( zcl_lab_06_elements_ag02=>cv_price ).
**    out->write( zcl_lab_06_elements_ag02=>cv_produtc ).
*
*
*    "Actualizar valor a través del método
*
*    lo_student->set_birth_date( iv_date = '20250826' ).
*
**    out->write( lo_student->birth_date ).
*
**lo_student->birth_date = '20250826'.
*
** 10. Parámetro opcional
*
*    zcl_lab_08_work_record_ag2=>open_new_record(
*    iv_date       = '20250826'
*    iv_first_name = 'Oscar'
*    iv_last_name  = 'Tarazona'
**  iv_surname    =
*  ).
*
*
*    DATA(lo_account) = NEW zcl_lab_09_account_ag2(  ).
*
*    lo_account->set_iban( iv_iban = 'BBVA'  ).
*
*    lo_account->get_iban(
*      IMPORTING
*        ev_iban = DATA(lv_iban) ).

*    out->write( lv_iban ).


*  Bloque 2 Constructor

*out->write( zcl_lab_10_constructor_ag02=>log ).
*
*
*DATA lo_const TYPE REF TO zcl_lab_10_constructor_ag02.
*
*
*lo_const = NEW #(  ).
*
    out->write( zcl_lab_10_constructor_ag02=>log ).

    DATA(lo_const) = NEW zcl_lab_10_constructor_ag02(  ).

    out->write( zcl_lab_10_constructor_ag02=>log ).

    DATA(lo_const2) = NEW zcl_lab_10_constructor_ag02(  ).

    out->write( zcl_lab_10_constructor_ag02=>log ).

   DATA(lo_const3) = NEW zcl_lab_10_constructor_ag02(  ).

    out->write( zcl_lab_10_constructor_ag02=>log ).

  ENDMETHOD.




ENDCLASS.














