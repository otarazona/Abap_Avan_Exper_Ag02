CLASS zcl_lab_73_model_ag2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

*    METHODS constructor IMPORTING iv_carrierri TYPE /dmo/carrier_id.


    METHODS set_carrier_fli IMPORTING iv_carrier_id TYPE /dmo/carrier_id.
    METHODS get_carrier_fli RETURNING VALUE(rt_flights) TYPE /dmo/t_flight.

*    METHODS get_carrier RETURNING VALUE(rv_carrier) TYPE /dmo/carrier_id.

  PROTECTED SECTION.
  PRIVATE SECTION.

*    DATA carrier TYPE /dmo/carrier_id.
    DATA mt_flights  TYPE /dmo/t_flight.

ENDCLASS.



CLASS zcl_lab_73_model_ag2 IMPLEMENTATION.


  METHOD set_carrier_fli.

      SELECT FROM /dmo/flight
      FIELDS *
      WHERE carrier_id = @iv_carrier_id
      INTO TABLE @me->mt_flights.

  ENDMETHOD.

  METHOD get_carrier_fli.

    rt_flights = me->mt_flights.

  ENDMETHOD.

ENDCLASS.
