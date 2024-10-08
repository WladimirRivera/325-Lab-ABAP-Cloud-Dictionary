CLASS zcl_insert_univ_437 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_insert_univ_437 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
*   Delete old records before the insert
    DELETE FROM zuniversity_437.

*   Adding records to the table using Modify
    MODIFY zuniversity_437 FROM TABLE @( VALUE #( ( soc = 'LOG1'
                                                    exercise = '2024'
                                                    student_id = 't100437'
                                                    first_name = 'Student'
                                                    last_name = '1'
                                                    course_code = '02'
                                                    course_price = '202.55'
                                                    currency = 'USD'
                                                    courses = '5'
                                                    unit = 'COU' )

                                                    ( soc = 'LOG2'
                                                    exercise = '2024'
                                                    student_id = 't100437'
                                                    first_name = 'Student'
                                                    last_name = '2'
                                                    course_code = '02'
                                                    course_price = '202.55'
                                                    currency = 'USD'
                                                    courses = '1'
                                                    unit = 'COU' )

                                                    ( soc = 'LOG3'
                                                    exercise = '2024'
                                                    student_id = 't100437'
                                                    first_name = 'Student'
                                                    last_name = '3'
                                                    course_code = '02'
                                                    course_price = '202.55'
                                                    currency = 'USD'
                                                    courses = '2'
                                                    unit = 'COU' )

                                                    ( soc = 'LOG4'
                                                    exercise = '2024'
                                                    student_id = 't100437'
                                                    first_name = 'Student'
                                                    last_name = '2'
                                                    course_code = '02'
                                                    course_price = '202.55'
                                                    currency = 'USD'
                                                    courses = '4'
                                                    unit = 'COU' )

                                                    ( soc = 'LOG5'
                                                    exercise = '2024'
                                                    student_id = 't100437'
                                                    first_name = 'Student'
                                                    last_name = '2'
                                                    course_code = '02'
                                                    course_price = '202.55'
                                                    currency = 'USD'
                                                    courses = '3'
                                                    unit = 'COU' ) ) ).
    IF sy-subrc EQ 0.
      out->write( |Rows Affected: { sy-dbcnt }| ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
