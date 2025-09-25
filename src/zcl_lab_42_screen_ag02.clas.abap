CLASS zcl_lab_42_screen_ag02 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    EVENTS: touch_screen EXPORTING VALUE(ev_Pos_H) TYPE i
                                   VALUE(ev_pos_V) TYPE i.

    METHODS ELEMENT_SELECTED IMPORTING iv_x_pos TYPE i
                                       iv_y_pos TYPE i.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_42_screen_ag02 IMPLEMENTATION.
  METHOD element_selected.


RAISE EVENT touch_screen EXPORTING ev_pos_h = iv_x_pos  ev_pos_v = iv_y_pos.

  ENDMETHOD.

ENDCLASS.
