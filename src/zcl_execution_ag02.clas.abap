CLASS zcl_execution_ag02 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_execution_ag02 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.



***data(lo_company) = NEW zcl_company_ag02(  ).
***data(lo_plant) = new zcl_plant_ag02(  ).
***lo_plant->set_company( iv_comp_code = '2000' ).
***out->write( lo_plant->get_company( ) ).
**
***data(lo_document) = NEW zcl_document_ag02(  ).
***data(lo_excel) = NEW zcl_excel_ag02(  ).
***lo_excel->set_title( iv_title = 'Account' ).
**
**    DATA(lo_linux) = NEW zcl_lab_12_linux_ag02(  ).
**
**    lo_linux->get_architecture(
***  RECEIVING
***    rv_architecture =
**    ).
**
***out->write( lo_plant->get_company( ) ).
**
*** Constructores con Herencia
**
**    DATA(lo_grid) = NEW zcl_lab_14_grid_agr02( iv_box = 'Box01' ).
**
**
***Redefinición de métodos
**
**    " Obtener un vuelo de ejemplo desde la tabla /DMO/FLIGHT
**    DATA(ls_flight) = VALUE /dmo/flight( carrier_id = 'AA' connection_id = '0018'  ).
**
**    SELECT SINGLE * FROM /dmo/flight INTO @ls_flight .
**    IF sy-subrc <> 0.
**      out->write( 'No se encontró ningún vuelo en /DMO/FLIGHT' ).
**      RETURN.
**    ENDIF.
**
**    DATA(lo_normal)  = NEW zcl_lab_15_flight_price_ag2( ).
**    DATA(lo_discount) = NEW zcl_lab_16_price_discount_ag02( ).
**    DATA(lo_super)   = NEW zcl_lab_17_super_discount_ag02( ).
**
**    lo_normal->add_price( iv_add_price = ls_flight ).
**    lo_discount->add_price( iv_add_price = ls_flight ).
**    lo_super->add_price( iv_add_price = ls_flight ).
**
**
**    " Mostrar precios
**    out->write( |Precio original : { ls_flight-price }| ).
***
***    READ TABLE lo_discount->mt_flights INDEX 1 INTO ls_flight.
***    out->write( |Precio con 10%  : { ls_flight-price }| ).
***
***    READ TABLE lo_super->mt_flights INDEX 1 INTO ls_flight.
***    out->write( |Precio con 20%  : { ls_flight-price }| ).
**
**
***    Narrowing Cast
**
**    DATA(lo_animal)  = NEW zcl_lab_18_animal( ).
**    DATA(lo_lion) = NEW zcl_lab_19_lion( ).
**
**    out->write( lo_animal->walk(  ) ).
**    out->write( lo_lion->walk(  ) ).
**
***    lo_animal = lo_lion.
**
**
**    out->write( 'Norrowing Casting (Up Cast)' ).
**    out->write( lo_animal->walk(  ) ).
**    out->write( lo_lion->walk(  ) ).
**
**
**    TRY .
**        lo_lion ?= lo_animal.
**
**      CATCH CX_SY_MOVE_CAST_ERROR.
**      out->write( 'Casting error' ).
**      return.
**
**    ENDTRY.
**
**    out->write( 'Widening Casting (Down Cast)' ).
**    out->write( lo_animal->walk(  ) ).
**    out->write( lo_lion->walk(  ) ).
*
*
** Llamadas a métodos de interfaz
*
*DATA(lo_fligts) = NEW zcl_lab_26_flights_ag02( ).
*
*
*lo_fligts->zif_lab_01_flight_ag02~set_conn_id( iv_conn_id = '0058' ).
*
*
**out->write( lo_fligts->zif_lab_01_flight_ag02~get_con_id(  ) ).
*
*
** Implementación de múltiples interfaces
*
**out->write( lo_fligts->zif_lab_02_customer_ag02~get_customer( iv_customer_id = '000020' ) ).


*Clase abstracta


*DATA(lo_logistics) = NEW zcl_lab_28_logistics(  ).
*
*
*out->write( lo_logistics->merchandise_output(  ) ).
*out->write( lo_logistics->input_products( ) ).
*out->write( lo_logistics->production_line(  ) ).

***Prueba polimorfismos CON CLASES

    DATA: gt_organization TYPE STANDARD TABLE OF REF TO zcl_lab_29_organization_ag2,
          go_organizat    TYPE REF TO zcl_lab_29_organization_ag2,
          go_germany      TYPE REF TO zcl_lab_30_org_germany_ag2,
          go_france       TYPE REF TO zcl_lab_31_org_france_ag2.


    go_germany = NEW #(  ).
    APPEND go_germany TO gt_organization.

    go_france = NEW #(  ).
    APPEND go_france TO gt_organization.

*      LOOP AT gt_organization INTO go_organizat.
*
*      out->write( go_organizat->get_location(  ) ).
*
*      ENDLOOP.

***Prueba polimorfismos CON INTERFACES

    DATA: gt_employee TYPE STANDARD TABLE OF REF TO zif_lab_04_employee_ag2,
          go_employ   TYPE REF TO zif_lab_04_employee_ag2,
          go_int_emp  TYPE REF TO zcl_lab_32_internal_empl_ag2,
          go_exp_emp  TYPE REF TO zcl_lab_33_expatriate_empl_ag2.


    go_int_emp = NEW #(  ).
    APPEND go_int_emp TO gt_employee.

    go_exp_emp = NEW #(  ).
    APPEND go_exp_emp TO gt_employee.

    LOOP AT gt_employee INTO go_employ.

*      out->write( go_employ->get_employees_count(  ) ).

    ENDLOOP.


****Asociación

*DATA(lo_student) = NEW zcl_lab_34_student_ag2( ).
*DATA(lo_college) = NEW zcl_lab_35_college( ).
*
*
*lo_student->set_student( 'Oscar Tarazona' ).
*lo_college->enroll_student( lo_student ).
*
*out->write( lo_student->get_student(   )  ).

*****COMPOSICIÓN
*
*DATA(lo_screen) = NEW zcl_lab_37_screen_ag02( ).
*DATA(lo_phone) = NEW zcl_lab_36_phone_ag02( lo_screen ).
*
*lo_screen->set_screen_type( 'Screen LED' ).
*
*out->write( lo_phone->get_screen(  )->get_screen_type(  ) ).

    DATA: lo_price_1 TYPE REF TO zcl_lab_38_prod_price_ag02,
          lo_price_2 TYPE REF TO zcl_lab_38_prod_price_ag02.

    lo_price_1 = NEW #(  ).
    lo_price_2 = NEW #(  ).

    lo_price_2 = lo_price_1.

    lo_price_1->price = '1000'.
    lo_price_2->price = '2000'.

*out->write( lo_price_1->price ).
*out->write( lo_price_2->price ).


****Crear instancias de tipos distintos


    DATA go_budget TYPE REF TO zcl_lab_39_budget_ag02.

    go_budget = NEW zcl_lab_40_actual_budget_ag2( ).

*    out->write( go_budget->get_budget(  ) ).

***Asignar instancias a la clase genérica Object

    DATA: lo_object       TYPE REF TO object,
          lo_method_name  TYPE string,
          lv_headquarters TYPE string.

    lo_object = NEW zcl_lab_41_organization_ag2( ).
    lo_method_name = 'SET_HEADQUARTERS'.

    CALL METHOD lo_object->(lo_method_name) EXPORTING iv_headquart = 'headquart 1'.

    lo_method_name = 'GET_HEADQUARTERS'.
    CALL METHOD lo_object->(lo_method_name) RECEIVING rv_headquart = lv_headquarters.

*   out->write( lv_headquarters ).

**Estructura de control TRY-CATCH-ENDTRY
*
*    DATA(lo_user) = NEW zcl_lab_53_check_user_ag2(  ).
*    DATA: lv_result TYPE I.
*    DATA: lv_num1 TYPE I VALUE 10.
*    DATA: lv_num2 TYPE I.
*
*    TRY.
**        lo_user->check_user( sy-uname ).
*
*       lv_result = lv_num1 / lv_num2.
*
*      CATCH zcx_lab_52_operations_ag2 into DATA(lx_auth).
*       out->write( lx_auth->get_text(  ) ).
*
*      CATCH cx_sy_zerodivide into DATA(lx_zerodivide).
*       out->write( lx_zerodivide->get_text(  ) ).
*
**Estructura de control RETRY.
*       lv_num2 = 2.
*
*       RETRY.
*
** GRANULARIDAD
*
*CATCH cx_root into data(lx_root).
*      out->write( 'Root' ).
*
*
*
*
*    ENDTRY.
*
*
*
*out->write( |'FINISH': { lv_result }| ).


**** Estructura de control CLEANUP

*Estructura de control TRY-CATCH-ENDTRY

    DATA(lo_user) = NEW zcl_lab_53_check_user_ag2(  ).
    DATA: lv_result TYPE i.
    DATA: lv_num1 TYPE i VALUE 10.
    DATA: lv_num2 TYPE i.

    TRY.
        TRY.

            lv_result = lv_num1 + lv_num2.
            lv_result = lv_num1 / lv_num2.
            lv_result = lv_num1 - lv_num2.

          CATCH zcx_lab_52_operations_ag2 INTO DATA(lx_auth).
            out->write( lx_auth->get_text(  ) ).

          CATCH cx_a4c_bc_exception.

          CLEANUP INTO DATA(lv_cleanup).

*            out->write( |Cleanup uno....{ lv_result }| ).



        ENDTRY.

      CATCH cx_sy_zerodivide INTO DATA(lx_zerodivide).
*        out->write( lx_zerodivide->get_text(  ) ).
*Estructura de control RETRY.
        lv_num2 = 2.
        RETRY.
*out->write( |Cleanup dos.....| ).

    ENDTRY.

*out->write( |'FINISH': { lv_result }| ).


**Implementación de excepciones reanudables

    DATA(lo_bank) = NEW zcl_lab_54_bank_ag2( ).

    TRY.
        lo_bank->transfer( iv_iban = 'ES95 4329 8765 4321' ).

      CATCH BEFORE UNWIND zcx_lab_55_auth_iban_ag2 INTO DATA(lx_aut_IBAN).
*        out->write( lx_aut_IBAN->get_text(  ) ).

        RESUME.
    ENDTRY.


** ASIGNACIÓN DE EXCEPCIONES UNAS A OTRAS
*
*    DATA(lo_analyzer) = NEW zcl_lab_58_date_analyzer_ag2(  ).
*
*    TRY.
*        TRY.
*            lo_analyzer->analyze_date(  ).
*          CATCH zcx_lab_56_no_date_ag2 INTO DATA(lx_no_date).
*            lo_analyzer->analyze_format( io_previus = lx_no_date ).
*            out->write( lx_no_date->get_text(  ) ).
*        ENDTRY.
*      CATCH zcx_lab_57_format_unknown_ag2 INTO DATA(lx_form_unk).
*        out->write( |{ lx_form_unk->get_text(  ) }{ cl_abap_char_utilities=>newline }| ).
*        out->write( |{ lx_form_unk->previous->get_text(  ) }\n | ).
*        out->write( lx_form_unk->get_text(  ) ).
*
*    ENDTRY.

** CLASE GLOBAL TEST

*DATA(lo_suma) = NEW zcl_lab_59_calculator_ag2( ).
*
*lo_suma->sum_up( exporting iv_num1 = 6 iv_num2 = 10
*                 RECEIVING rv_result = DATA(lv_resultado) ).
*
*
*out->write( lv_resultado ).

**PATRONES DE DISEÑO

*DATA: go_singleton1 TYPE REF TO zcl_lab_62_context_patr_ag2,
*      go_singleton2 TYPE REF TO zcl_lab_62_context_patr_ag2.
*
*go_singleton1 = zcl_lab_62_context_patr_ag2=>get_intance(  ).
*
*wait up to 3 seconds.
*go_singleton2 = zcl_lab_62_context_patr_ag2=>get_intance(  ).
*
*
*out->write( go_singleton1->mv_time ).
*out->write( go_singleton1->mv_time ).


**FACTORY METHODS

    DATA: go_file    TYPE REF TO zif_lab_06_file_ag2,
          go_factory TYPE REF TO zcl_lab_65_factory_ag2.

    go_factory = NEW #(  ).
    go_file = go_factory->create_file( 'File_Supply' ).
*    out->write( go_file->get_file_type(  ) ).


** Template Method

    DATA(lo_Pack_A) = NEW zcl_lab_67_package_a_ag2(  ).
    DATA(lo_Pack_B) = NEW zcl_lab_68_package_b_ag2(  ).

*    out->write( |--- EJECUTANDO PAQUETE A (Playa) ---| ).
*    lo_pack_a->travel( out ).
*
*    out->write( | | ).
*    out->write( |--- EJECUTANDO PAQUETE B (Eje Cafetero) ---| ).
*    lo_pack_b->travel( out ).

** Patrón OBSERVER

    DATA(go_blog) = NEW zcl_lab_69_blog_ag02(  ).
    DATA(go_admin) = NEW zcl_lab_71_administrator_ag2(  ).
    DATA(go_users) = NEW zcl_lab_72_users_ag2(  ).

    SET HANDLER go_admin->on_public_art FOR go_blog.
    SET HANDLER go_users->on_public_art FOR go_blog.

    go_blog->set_artic( 'New article publication' ).

*    out->write( go_blog->get_artic(  ) ).
*    out->write( | | ).
*    out->write( go_admin->new_public ).
*    out->write( go_users->new_public ).


** Patrón Model - View - Controller

    DATA(go_model) = NEW zcl_lab_73_model_ag2(  ).
    DATA(go_view) = NEW zcl_lab_74_view_ag2(  ).

    DATA(go_controller) = NEW zcl_lab_75_controller_ag2(  ).

    go_controller->set_model( go_model ).
    go_controller->get_model(  )->set_carrier_fli( 'LH' ).
    go_controller->set_view( go_view ).

    go_controller->get_view(  )->disp_flights( it_flights = go_controller->get_model(  )->get_carrier_fli(  )
                                               io_out     = out ).













































  ENDMETHOD.

ENDCLASS.
