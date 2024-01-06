/*

A label can be used with GOTO to jump to a specific part of a block.
A label is created by <<label_name>>. 
The GOTO has to be in the same block as the label.

When you put a label at the end of a block, you can use it to jump
out of the block. When doing so it is necessary to add a NULL; statement
before the end of the block.

GOTO is a recipy for disaster, and should be avoided at all costs,
since it makes the code very spaghetti prone.

It has the smell of a fortran77 program.

*/

SET SERVEROUTPUT ON;

BEGIN
  GOTO second_message;

  <<first_message>>
  DBMS_OUTPUT.PUT_LINE( 'Hello' );
  GOTO the_end;

  <<second_message>>
  DBMS_OUTPUT.PUT_LINE( 'PL/SQL GOTO Demo' );
  GOTO first_message;

  <<the_end>>
  DBMS_OUTPUT.PUT_LINE( 'and good bye...' );
  GOTO the_final_end;

  DBMS_OUTPUT.PUT_LINE( 'You will never get here!' );

  <<the_final_end>>
  NULL;
END;