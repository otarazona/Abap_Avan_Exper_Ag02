CLASS zcl_lab_26_flights_ag02 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.


    INTERFACES zif_lab_01_flight_ag02.
    INTERFACES zif_lab_02_customer_ag02.

    ALIASES: set_flight FOR zif_lab_01_flight_ag02~set_conn_id,
             get_flight FOR zif_lab_01_flight_ag02~get_con_id,
             get_cust   FOR zif_lab_02_customer_ag02~get_customer.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_26_flights_ag02 IMPLEMENTATION.


  METHOD set_flight.     "zif_lab_01_flight_ag02~set_conn_id.

    me->zif_lab_01_flight_ag02~conn_id = iv_conn_id.

  ENDMETHOD.


  METHOD get_flight. " zif_lab_01_flight_ag02~get_con_id.

    rv_conn_id = me->zif_lab_01_flight_ag02~conn_id.


  ENDMETHOD.



  METHOD get_cust. "zif_lab_02_customer_ag02~get_customer.

    SELECT SINGLE
          FROM /dmo/customer
          FIELDS first_name, last_name
          WHERE customer_id = @iv_customer_id
          INTO @rv_adress.


  ENDMETHOD.

  METHOD zif_lab_03_airports_ag02~get_airports.

    SELECT SINGLE *
    FROM /dmo/airport
    WHERE airport_id = @iv_airport_id
    INTO @rv_conn_id.



  ENDMETHOD.

ENDCLASS.
