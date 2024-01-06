/*

This is a somewhat complicated example using the SELECT INTO statement.
It uses an inner join to get the name and email of a customer with id = 7.

SELECT INTO requires that the query returns exactly one row. If it returns
zero or more than one row, an exception will be raised.
*/
SET SERVEROUTPUT ON;

DECLARE
    l_name VARCHAR2(50);
    l_email VARCHAR2(50);
BEGIN
    SELECT
        name,
        email
    INTO
        l_name,
        l_email
    FROM
        customers
    INNER JOIN
        contacts
    ON
        customers.id = contacts.customer_id
    WHERE
        customers.id = 7;

    DBMS_OUTPUT.PUT_LINE(l_name || ' - ' || l_email);
END;