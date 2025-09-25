CLASS zcl_lab_43_navigation_ag02 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA log TYPE string.

    METHODS on_touch_screen FOR EVENT touch_screen OF zcl_lab_42_screen_ag02 IMPORTING ev_pos_h
                                                                                       ev_pos_v.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_43_navigation_ag02 IMPLEMENTATION.
  METHOD on_touch_screen.

  ENDMETHOD.

ENDCLASS.
