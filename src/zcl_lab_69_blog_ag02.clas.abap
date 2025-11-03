CLASS zcl_lab_69_blog_ag02 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS set_artic IMPORTING iv_articulo TYPE string.
    METHODS get_artic RETURNING VALUE(rv_articulo) TYPE string.

    EVENTS new_public EXPORTING VALUE(ev_new_public) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA new_art TYPE string.

ENDCLASS.



CLASS zcl_lab_69_blog_ag02 IMPLEMENTATION.

  METHOD set_artic.

    me->new_art = iv_articulo.
    RAISE EVENT new_public EXPORTING ev_new_public = me->new_art.

  ENDMETHOD.

  METHOD get_artic.

    rv_articulo = me->new_art.

  ENDMETHOD.



ENDCLASS.
