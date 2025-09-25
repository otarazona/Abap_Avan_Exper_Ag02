CLASS zcl_lab_06_elements_ag02 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES: BEGIN OF ty_elem_objets,
             class     TYPE string,
             instance  TYPE string,
             reference TYPE string,
           END OF ty_elem_objets,
           tty_adress TYPE TABLE OF ty_elem_objets.

    DATA ms_object TYPE ty_elem_objets.

    METHODS set_object IMPORTING iv_class     TYPE string
                                 iv_instance  TYPE string
                                 iv_reference TYPE string.  "it_object type tty_adress.



    CONSTANTS: cv_currency_usd TYPE string VALUE 'USD',
               cv_produtc      TYPE string VALUE 'Celular',
               cv_marca        TYPE string VALUE 'Motorola',
               cv_price        TYPE string VALUE '800.000'.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_06_elements_ag02 IMPLEMENTATION.

  METHOD set_object.

    ms_object-class     = iv_class.
    ms_object-instance  = iv_instance.
    ms_object-reference = iv_reference.

* me->ms_object = it_object.



  ENDMETHOD.



ENDCLASS.
