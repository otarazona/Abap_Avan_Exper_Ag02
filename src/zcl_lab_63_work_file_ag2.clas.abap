CLASS zcl_lab_63_work_file_ag2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  INTERFACES zif_lab_06_file_ag2.

  ALIASES work_file for zif_lab_06_file_ag2~get_file_type.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_63_work_file_ag2 IMPLEMENTATION.
  METHOD work_file.

  rv_file_type = 'Documento de trabajo'.

  ENDMETHOD.

ENDCLASS.
