CLASS zcl_lab_72_users_ag2 DEFINITION INHERITING FROM zcl_lab_70_observer_ag2
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  data new_public TYPE string.
    METHODS: on_public_art REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_72_users_ag2 IMPLEMENTATION.
  METHOD on_public_art.

me->new_public = ev_new_public.

  ENDMETHOD.

ENDCLASS.
