/*
Anonymous block consists of three parts:

  1. DECLARE
  2. BEGIN
  3. EXCEPTION

and ends with END;
*/
SET SERVEROUTPUT ON;

DECLARE

  -- Declare some variables
  l_message VARCHAR2(50);
  v_result NUMBER;

BEGIN

  -- Hello World
  l_message := 'Hello, PL/SQL!';
  DBMS_OUTPUT.PUT_LINE(l_message);

  -- Trigger Exception  
  v_result := 1 / 0;

EXCEPTION

  WHEN ZERO_DIVIDE THEN
    DBMS_OUTPUT.PUT_LINE( SQLERRM );

END;

