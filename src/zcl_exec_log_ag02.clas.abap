CLASS zcl_exec_log_ag02 DEFINITION PUBLIC FINAL CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES: BEGIN OF ty_adress,
             country TYPE string,
             city    TYPE string,
             region  TYPE string,
             street  TYPE string,
             number  TYPE string,
           END OF ty_adress,
           tty_adress TYPE TABLE OF ty_adress.

*CONSTANTS cv_currency_usd TYPE string VALUE 'USD'. " OPCION 1


    CONSTANTS: BEGIN OF cs_currency, " OPCIÓN 2
                 usd TYPE c LENGTH 3 VALUE 'USD',
                 eur TYPE c LENGTH 3 VALUE 'EUR',
                 cop TYPE c LENGTH 3 VALUE 'COP',
               END OF cs_currency.


    CLASS-DATA: currency TYPE c LENGTH 3. " ATRIBUTO ESTATICO
    DATA region TYPE string.

    METHODS set_client IMPORTING iv_client   TYPE string
                                 iv_location TYPE string OPTIONAL
                       EXPORTING ev_status   TYPE string
                       CHANGING  cv_process  TYPE string OPTIONAL.


    METHODS get_client EXPORTING ev_client TYPE string.

    CLASS-METHODS: set_cntr_tipo IMPORTING iv_cntr_tipo TYPE string,
      get_cntr_tipo EXPORTING ev_cntr_tipo TYPE string.


    METHODS get_client_name IMPORTING iv_client_id          TYPE string
                            RETURNING VALUE(rv_client_name) TYPE string.

    METHODS set_address IMPORTING it_adress TYPE tty_adress.

    METHODS:
      set_producto IMPORTING iv_product TYPE string,
      get_producto EXPORTING ev_product TYPE string.




    CONSTANTS: c_logali TYPE c LENGTH 6 VALUE 'Logali',

               BEGIN OF cs_values,
                 c_v1 TYPE c LENGTH 2 VALUE 'V1',
                 c_v2 TYPE c LENGTH 2 VALUE 'V2',
                 c_v3 TYPE c LENGTH 2 VALUE 'V3',
               END OF cs_values.

    DATA: company TYPE c LENGTH 9 VALUE 'FEMSA' READ-ONLY. " ATRIBUTO DE INSTANCIA


*    DATA: product TYPE string.
*    CLASS-DATA : date TYPE string.


    CLASS-METHODS:

      set_date IMPORTING iv_date TYPE string,
      get_date EXPORTING ev_date TYPE string.

    CLASS-DATA companyAG TYPE string VALUE 'Agora CSC' READ-ONLY.

    METHODS set_sales_org IMPORTING sales_org TYPE string.
    METHODS get_sales_org IMPORTING sales_org TYPE string.

    INTERFACES: if_oo_adt_classrun.

  PROTECTED SECTION.

    DATA: creation_date TYPE sydate.



  PRIVATE SECTION.

    DATA: client TYPE string.

    DATA        products TYPE string.
    CLASS-DATA  dates    TYPE string.
    CLASS-DATA  ctr_tipo TYPE string.
    DATA sale_org        TYPE string.

ENDCLASS.



CLASS zcl_exec_log_ag02 IMPLEMENTATION.


  METHOD get_client.

    ev_client = client.

  ENDMETHOD.


  METHOD get_cntr_tipo.

    ev_cntr_tipo = ctr_tipo.

  ENDMETHOD.


  METHOD get_date.

    ev_date = dates.
  ENDMETHOD.


  METHOD get_producto.

    ev_product = products.

  ENDMETHOD.


  METHOD if_oo_adt_classrun~main.
    out->write( 'Hello Group Agora' ).

    DATA(lo_class) = NEW zcl_exec_log_ag02( ).

    lo_class->set_producto( 'Product1' ).

    lo_class->get_producto(
      IMPORTING
        ev_product = DATA(lv_proct) ).

    out->write( lv_proct ).

    zcl_exec_log_ag02=>set_date( '20250807' ).

    zcl_exec_log_ag02=>get_date(
      IMPORTING
        ev_date = DATA(lv_date) ).

    out->write( lv_date ).

*..................................................

  ENDMETHOD.


  METHOD set_client.

    client = iv_client.
    ev_status = 'OK'.

    IF iv_location IS SUPPLIED.
      cv_process = 'started'.
    ELSE.
      cv_process = 'NOT Started'.
    ENDIF.

  ENDMETHOD.


  METHOD set_cntr_tipo.

    ctr_tipo = iv_cntr_tipo.

  ENDMETHOD.


  METHOD set_date.

    dates = iv_date.

  ENDMETHOD.


  METHOD set_producto.

    me->products = iv_product.
  ENDMETHOD.



  METHOD get_client_name.

    CASE iv_client_id.

      WHEN '01'.

        rv_client_name = 'Estella'.

      WHEN '02'.

        rv_client_name = 'maritza'.

    ENDCASE.
  ENDMETHOD.

  METHOD set_address.

  ENDMETHOD.

  METHOD get_sales_org.

    sale_org = me->sale_org.

  ENDMETHOD.

  METHOD set_sales_org.

    me->sale_org = sales_org.

  ENDMETHOD.

ENDCLASS.
