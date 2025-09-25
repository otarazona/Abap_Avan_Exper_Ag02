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

    out->write( lv_headquarters ).




















  ENDMETHOD.

ENDCLASS.
