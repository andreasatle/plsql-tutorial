CREATE OR REPLACE FUNCTION my_function (
    p_parameter1 IN VARCHAR2,
    p_parameter2 IN NUMBER
) RETURN VARCHAR2 IS
    v_result VARCHAR2(100);
BEGIN
    -- Function logic here
    v_result := 'Result: ' || p_parameter1 || ' ' || TO_CHAR(p_parameter2);
    RETURN v_result;
END my_function;