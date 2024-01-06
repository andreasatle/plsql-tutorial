/*
Explicit cursors are used to process the rows returned by a query.
The cursor is declared, opened, fetched and closed.
*/
SET SERVEROUTPUT ON;

DECLARE
    l_customer customers%ROWTYPE;
    CURSOR c_customers IS
        SELECT
            *
        FROM
            customers;
BEGIN
    OPEN c_customers;
    LOOP
        FETCH c_customers INTO l_customer;
        EXIT WHEN c_customers%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(l_customer.name);
    END LOOP;
END;