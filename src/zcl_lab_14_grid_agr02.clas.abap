CLASS zcl_lab_14_grid_agr02 DEFINITION INHERITING FROM zcl_lab_13_view_ag02
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS: constructor IMPORTING iv_box TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_14_grid_agr02 IMPLEMENTATION.


  METHOD constructor.

  SUPER->constructor( iv_view_type = 'Tipo vista GRID' ).

  me->box = iv_box.


  ENDMETHOD.

ENDCLASS.
