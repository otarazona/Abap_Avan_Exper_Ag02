CLASS zcl_lab_75_controller_ag2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS set_model IMPORTING io_model TYPE REF TO zcl_lab_73_model_ag2.
  METHODS get_model RETURNING VALUE(ro_model) TYPE REF TO zcl_lab_73_model_ag2.

  METHODS set_view IMPORTING io_view TYPE REF TO zcl_lab_74_view_ag2.
  METHODS get_view RETURNING VALUE(ro_view) TYPE REF TO zcl_lab_74_view_ag2.

  PROTECTED SECTION.
  PRIVATE SECTION.

  data: model TYPE REF TO zcl_lab_73_model_ag2,
        view  TYPE REF TO zcl_lab_74_view_ag2.

ENDCLASS.



CLASS zcl_lab_75_controller_ag2 IMPLEMENTATION.
  METHOD get_model.
   ro_model = me->model.
  ENDMETHOD.

  METHOD set_model.
    me->model = io_model.
  ENDMETHOD.

  METHOD get_view.
    ro_view = me->view.
  ENDMETHOD.

  METHOD set_view.
    me->view = io_view.
  ENDMETHOD.

ENDCLASS.
