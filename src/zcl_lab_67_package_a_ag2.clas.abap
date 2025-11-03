CLASS zcl_lab_67_package_a_ag2 DEFINITION INHERITING FROM zcl_lab_66_travel_ag2
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  PROTECTED SECTION.
    METHODS: transport_oneway REDEFINITION,
             day_one REDEFINITION,
             day_two REDEFINITION,
             day_three REDEFINITION,
             transport_return REDEFINITION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_67_package_a_ag2 IMPLEMENTATION.

  METHOD transport_oneway.

   iv_out->write( |Día 0: Vuelo hacia Colombia(Santa Marta).| ).

  ENDMETHOD.


  METHOD day_one.

  iv_out->write( |Día 1: Registro en Hotel y Paseo a la playa.| ).

  ENDMETHOD.

  METHOD day_two.

  iv_out->write( |Día 2: Visita al acuario y Almuerzo.| ).

  ENDMETHOD.

  METHOD day_three.

  iv_out->write( |Día 3: Paseo chiva rumbera y Cena con vista a la playa.| ).

  ENDMETHOD.


  METHOD transport_return.

  iv_out->write( |Día 4: Vuelo de regreso a casa.| ).

  ENDMETHOD.

ENDCLASS.
