/*
In PL/SQL, a variable is named storage location that stores a value
of a particular data type. The value of the variable changes through
the program. Before using a variable, you must declare it in the
declaration section of a block.
*/
SET SERVEROUTPUT ON;
DECLARE
    l_total_sales NUMBER(15,2) := 3.141592;
    l_contact_name VARCHAR2(255) NOT NULL := 'Sven';
    l_not_null PLS_INTEGER NOT NULL := 4711;
    
    -- Entries in the customers table, with anchored declarations
    l_name customers.name%TYPE;
    l_credit_limit customers.credit_limit%TYPE;
    
    -- Variables for another SQL call
    l_average_credit l_credit_limit%TYPE;
    l_max_credit     l_credit_limit%TYPE;
    l_min_credit     l_credit_limit%TYPE;
    
    -- Define constants
    co_pi     CONSTANT REAL := 3.14159;
    co_radius CONSTANT REAL := 10;
    co_area   CONSTANT REAL := (co_pi * co_radius**2);
BEGIN
    -- Change a variable
    l_contact_name := 'Sven-Gunnar';
    DBMS_OUTPUT.PUT_LINE(l_total_sales);
    DBMS_OUTPUT.PUT_LINE(l_contact_name);
    
    -- Read name and credit_limit from customers table where id = 8.
    SELECT
        name, credit_limit
    INTO
        l_name, l_credit_limit
    FROM
        customers
    WHERE
        id = 8;
        
    -- Output customer with id = 8.
    DBMS_OUTPUT.PUT_LINE(l_name || ':' || l_credit_limit );
    
    -- Get credit limits using SELECT INTO
    SELECT 
        MIN(credit_limit), 
        MAX(credit_limit), 
        AVG(credit_limit)
    INTO 
        l_min_credit,
        l_max_credit, 
        l_average_credit
    FROM customers;
    
    -- Show the credits     
    dbms_output.put_line('Min Credit: ' || l_min_credit);
    dbms_output.put_line('Max Credit: ' || l_max_credit);
    dbms_output.put_line('Avg Credit: ' || l_average_credit);
    
    -- Write contant
    DBMS_OUTPUT.PUT_LINE('Circle area: ' || co_area);
END;
