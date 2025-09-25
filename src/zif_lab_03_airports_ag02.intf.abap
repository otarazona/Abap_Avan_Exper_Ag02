INTERFACE zif_lab_03_airports_ag02
  PUBLIC .

  METHODS: get_airports IMPORTING iv_airport_id TYPE string
                        RETURNING VALUE(rv_conn_id) TYPE /dmo/airport.

ENDINTERFACE.
