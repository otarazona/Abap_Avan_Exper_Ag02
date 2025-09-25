CLASS zcl_constructor DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

*    CLASS-DATA: log TYPE string.

*    METHODS:
*
*      constructor IMPORTING data TYPE string.
*
    CLASS-METHODS:
*
      class_contructor.



  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_constructor IMPLEMENTATION.


  METHOD class_contructor.
*
*    log = |{ log } Static Constructor--> |.
*
*  ENDMETHOD.
*
*  METHOD constructor.
*
*    log = |{ log } Instance Constructor--> |.
  ENDMETHOD.


  METHOD if_oo_adt_classrun~main.

*data lo_contract type REF TO zcl_exec_log_ag02.
*CREATE OBJECT lo_contract.
*lo_contract = NEW #(  ).

    DATA(lo_contract) = NEW zcl_exec_log_ag02(  ).


    DATA lv_process TYPE string.

    DATA: lt_address TYPE zcl_exec_log_ag02=>tty_adress,
          ls_address type zcl_exec_log_ag02=>ty_adress.

    IF lo_contract IS BOUND.

      lo_contract->set_client(
        EXPORTING
          iv_client   = 'Logali'
          iv_location = space
        IMPORTING
          ev_status   = DATA(lv_status)
        CHANGING
          cv_process  = lv_process ).


      lo_contract->get_client(
        IMPORTING
          ev_client = DATA(lv_client) ).

      lo_contract->region = 'CO'.

*Instancia lo_contract->

lo_contract->get_client_name(
  EXPORTING
    iv_client_id   = '01'
  RECEIVING
    rv_client_name = data(lv_client_name) ).

    ENDIF.

    zcl_exec_log_ag02=>set_cntr_tipo( iv_cntr_tipo = 'Construcción' ).
    zcl_exec_log_ag02=>get_cntr_tipo(
      IMPORTING
        ev_cntr_tipo = DATA(Lv_cntr_type) ).

    zcl_exec_log_ag02=>currency = zcl_exec_log_ag02=>cs_currency-cop.

    out->write( |{ lv_client }-{ lv_status }-{ lv_process }-{ lo_contract->region } | ).
    out->write( lv_cntr_type ).
    out->write( lv_client_name ).




  ENDMETHOD.
ENDCLASS.
