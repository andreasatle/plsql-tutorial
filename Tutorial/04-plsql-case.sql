/*
    CASE statement

    1. Simple case statement
       - Check for different values of a single variable

    2. Searched case statement
       - Check for different boolean conditions

    If no condition is met in a case statement, the ELSE part will
    execute. If there is no ELSE statement, the case statement will
    throw an exception (RAISE CASE_NOT_FOUND;).
*/

SET SERVEROUTPUT ON;
DECLARE
    c_grade CHAR(1);
    c_rank VARCHAR2(20);

    n_sales      NUMBER;
    n_commission NUMBER;
BEGIN

    c_grade := 'B';

    -- Simple case statement
    CASE c_grade
        WHEN 'A' THEN
            c_rank := 'Excellent';
        WHEN 'B' THEN
            c_rank := 'Very Good';
        WHEN 'C' THEN
            c_rank := 'Good';
        WHEN 'D' THEN
            c_rank := 'Fair';
        WHEN 'F' THEN
            c_rank := 'Poor';
        ELSE
            c_rank := 'No such grade';
    END CASE;
    DBMS_OUTPUT.PUT_LINE(c_rank);

    n_sales := 150000;
    -- Searched case statement
    CASE
        WHEN n_sales > 200000 THEN
            n_commission := 0.2;
        WHEN n_sales >= 100000 AND n_sales < 200000 THEN
            n_commission := 0.15;
        WHEN n_sales >= 50000 AND n_sales < 100000 THEN
            n_commission := 0.1;
        WHEN n_sales > 30000 THEN
            n_commission := 0.05;
        ELSE
            n_commission := 0;
    END CASE;

    DBMS_OUTPUT.PUT_LINE('Commission is ' || n_commission * 100 || '%');
END;

