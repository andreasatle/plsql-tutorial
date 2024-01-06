/*
All different loops in PL/SQL:
    * LOOP
    * FOR LOOP
    * FOR REVERSE LOOP
    * WHILE LOOP

It possible to jump the the next iteration by CONTINUE.
I noticed that this is dangerous for the WHILE loop, since you need to increase
the iterator variable in the beginning of the loop. Otherwise you will get an
infinite loop.

*/

SET SERVEROUTPUT ON;

DECLARE
    l_counter PLS_INTEGER;
BEGIN
    -- Infinite LOOP, has to be exited
    l_counter := 0;
    LOOP
        EXIT WHEN l_counter = 3;
        DBMS_OUTPUT.PUT_LINE('LOOP: ' || l_counter);
        l_counter := l_counter + 1;
    END LOOP;

    -- FOR-LOOP
    FOR i IN 1..3 LOOP

        DBMS_OUTPUT.PUT_LINE('FOR-LOOP: ' || i);
    END LOOP;

    -- REVERSE FOR-LOOP
    FOR i IN REVERSE 1..3 LOOP
        DBMS_OUTPUT.PUT_LINE('REVERSE FOR-LOOP: ' || i);
    END LOOP;

    -- WHILE-LOOP WITH CONTINUE
    l_counter := 0;
    WHILE l_counter < 8 LOOP
        l_counter := l_counter + 1;
        CONTINUE WHEN MOD(l_counter, 2) = 0;
        DBMS_OUTPUT.PUT_LINE('WHILE-LOOP WITH CONTINUE: ' || l_counter);
    END LOOP;
END;