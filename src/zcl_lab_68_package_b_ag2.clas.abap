CLASS zcl_lab_68_package_b_ag2 DEFINITION INHERITING FROM zcl_lab_66_travel_ag2
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



CLASS zcl_lab_68_package_b_ag2 IMPLEMENTATION.

  METHOD transport_oneway.

   iv_out->write( |Día 0: Vuelo hacia Colombia(Eje Cafetero).| ).

  ENDMETHOD.


  METHOD day_one.

  iv_out->write( |Día 1: Registro en Hotel y Visita parque del café.| ).

  ENDMETHOD.

  METHOD day_two.

  iv_out->write( |Día 2: Visita Valle de Cocora y Almuerzo.| ).

  ENDMETHOD.

  METHOD day_three.

  iv_out->write( |Día 3: Baño Aguas Termales y parque Nacional m¿nevado del Ruiz .| ).

  ENDMETHOD.


  METHOD transport_return.

  iv_out->write( |Día 4: Almuerzo y Vuelo de regreso a casa.| ).

  ENDMETHOD.

ENDCLASS.
