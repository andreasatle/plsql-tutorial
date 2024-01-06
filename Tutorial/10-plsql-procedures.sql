CREATE OR REPLACE PROCEDURE my_procedure (
    p_parameter1 IN VARCHAR2,
    p_parameter2 OUT NUMBER
) AS
BEGIN
    -- Procedure logic here
    DBMS_OUTPUT.PUT_LINE('Parameter 1: ' || p_parameter1);

    -- Assign a value to the OUT parameter
    p_parameter2 := 42;
END my_procedure;

