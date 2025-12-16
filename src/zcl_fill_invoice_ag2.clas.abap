CLASS zcl_fill_invoice_ag2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_fill_invoice_ag2 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

**  out->write(  cl_abap_context_info=>get_user_technical_name(  ) ).
MODIFY zdt_com_inv_ag2 FROM TABLE @( VALUE #( ( invoice_id = '0001'
                                                    customer_name = 'Oscar Tarazona '
                                                    inv_amount = '250000'
                                                    currency = 'COP'
                                                    department = 'AA'
                                                    created_by = cl_abap_context_info=>get_user_technical_name(  )
                                                    create_date = '20251210' )

                                                   ( invoice_id = '0002'
                                                    customer_name = 'Oscar Tarazona '
                                                    inv_amount = '300000'
                                                    currency = 'COP'
                                                    department = 'AA'
                                                    created_by = cl_abap_context_info=>get_user_technical_name(  )
                                                    create_date = '20251210' )

                                                   ( invoice_id = '0003'
                                                    customer_name = 'Oscar Tarazona '
                                                    inv_amount = '856000'
                                                    currency = 'COP'
                                                    department = 'BB'
                                                    created_by = cl_abap_context_info=>get_user_technical_name(  )
                                                    create_date = '20251210' )

                                                   ( invoice_id = '0004'
                                                    customer_name = 'Oscar Tarazona '
                                                    inv_amount = '345000'
                                                    currency = 'COP'
                                                    department = 'CC'
                                                    created_by = cl_abap_context_info=>get_user_technical_name(  )
                                                    create_date = '20251210' )

                                                   ( invoice_id = '0005'
                                                    customer_name = 'Oscar Tarazona '
                                                    inv_amount = '746000'
                                                    currency = 'COP'
                                                    department = 'CC'
                                                    created_by = cl_abap_context_info=>get_user_technical_name(  )
                                                    create_date = '20251210' )

                                                   ( invoice_id = '0006'
                                                    customer_name = 'Maria Torrado '
                                                    inv_amount = '630000'
                                                    currency = 'COP'
                                                    department = 'XX'
                                                    created_by = 'CB9999999991'
                                                    create_date = '20251210' )

                                                   ( invoice_id = '0007'
                                                    customer_name = 'Maria torrado '
                                                    inv_amount = '250000'
                                                    currency = 'COP'
                                                    department = 'AA'
                                                    created_by = 'CB9999999991'
                                                    create_date = '20251210' )

                                                   ( invoice_id = '0008'
                                                    customer_name = 'Diana Perez '
                                                    inv_amount = '1500000'
                                                    currency = 'COP'
                                                    department = 'YY'
                                                    created_by = 'CB9999999992'
                                                    create_date = '20251210' )

                                                   ( invoice_id = '0009'
                                                    customer_name = 'Karen Castañeda '
                                                    inv_amount = '980200'
                                                    currency = 'COP'
                                                    department = 'YY'
                                                    created_by = 'CB9999999993'
                                                    create_date = '20251210' )

                                                   ( invoice_id = '0010'
                                                    customer_name = 'Samuel Delgado '
                                                    inv_amount = '3456800'
                                                    currency = 'COP'
                                                    department = 'ZZ'
                                                    created_by = 'CB9999999994'
                                                    create_date = '20251210' )  ) ) .


  ENDMETHOD.

ENDCLASS.
