CLASS zcl_lab_53_check_user_ag2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS CHECK_USER IMPORTING iv_user TYPE syuname
                     RAISING zcx_lab_52_operations_ag2.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_53_check_user_ag2 IMPLEMENTATION.
  METHOD check_user.

  if sy-uname eq 'CB9980000370'.

raise EXCEPTION TYPE zcx_lab_52_operations_ag2
  EXPORTING
    textid       = zcx_lab_52_operations_ag2=>no_access
*    previous     =
    iv_no_execut = |{ SY-uname }|
    iv_no_access = |{ SY-uname }|.
  ELSE.

ENDIF.


  ENDMETHOD.

ENDCLASS.
