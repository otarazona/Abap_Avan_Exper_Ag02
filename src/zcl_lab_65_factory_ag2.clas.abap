CLASS zcl_lab_65_factory_ag2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS create_file IMPORTING iv_create_file TYPE STRING
                      RETURNING VALUE(ro_file_type) TYPE REF TO zif_lab_06_file_ag2.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_65_factory_ag2 IMPLEMENTATION.
  METHOD create_file.

  case iv_create_file.
    when 'File_Work'.

    ro_file_type = NEW zcl_lab_63_work_file_ag2(  ).

       when 'File_Supply'.

    ro_file_type = NEW zcl_lab_64_supply_file_ag2(  ).

  endcase.

  ENDMETHOD.

ENDCLASS.
