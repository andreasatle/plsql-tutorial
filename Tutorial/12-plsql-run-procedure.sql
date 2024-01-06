SET SERVEROUTPUT ON;
DECLARE
    v_input VARCHAR2(50) := 'Hello, PL/SQL!';
    v_output NUMBER;
    f_output VARCHAR2(100);
BEGIN
    -- Execute the procedure
    my_procedure(v_input, v_output);

    -- Display the value of the OUT parameter
    DBMS_OUTPUT.PUT_LINE('Parameter 2: ' || v_output);

    -- Execute the function
    f_output := my_function(v_input, v_output);

    -- Display the value of the function
    DBMS_OUTPUT.PUT_LINE('Function output: ' || f_output);
END;