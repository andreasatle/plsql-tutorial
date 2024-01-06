/*
The IF statement allows you to either execute or skip a sequence
of statements, depending on a condition. The IF statement is on
the form:

IF <boolean 1> THEN
    <statement 1>
ELSIF <boolean 2> THEN
    <statement 2>
ELSE
    <statement 3>
END IF;

There has to be exactly one IF and END IF, but there can be zero
or more ELSIF statements. The ELSE part is optional. The boolean
expressions can be any expression that evaluates to TRUE or FALSE.
The boolean expressions are evaluated in order, and the first one
that evaluates to TRUE will execute its statement(s). If none of
the boolean expressions evaluate to TRUE, the ELSE statement will
execute its statement(s).
*/

SET SERVEROUTPUT ON;
DECLARE
    n_sales NUMBER := 150000;
    b_flag BOOLEAN := FALSE;
    n_commission NUMBER(10, 2) := 0;
BEGIN
    -- IF - ELSEIF - ELSE - END IF
    IF n_sales > 200000 THEN
        n_commission := n_sales * 0.1;
    ELSIF n_sales <= 200000 AND n_sales > 100000 THEN
        -- Nested IF statement
        IF b_flag THEN
            DBMS_OUTPUT.PUT_LINE('True');
        ELSE
            DBMS_OUTPUT.PUT_LINE('False');
        END IF;
        n_commission := n_sales * 0.05;
    ELSIF n_sales <= 100000 AND n_sales > 50000 THEN
        n_commission := n_sales * 0.03;
    ELSE
        n_commission := n_sales * 0.02;
    END IF;

    DBMS_OUTPUT.PUT_LINE('Commission: ' || n_commission);

END;