SET SERVEROUTPUT ON;
BEGIN
    DROP TABLE customers;
    -- Create a table named "customers"
    CREATE TABLE customers (
        id           NUMBER PRIMARY KEY,
        name         VARCHAR2(100),
        credit_limit NUMBER
    );

    DROP TABLE contacts;
    -- Create a table named "contacts"
    CREATE TABLE contacts (
        id           NUMBER PRIMARY KEY,
        customer_id  NUMBER,
        email        VARCHAR2(100),
    );

    -- Insert 10 rows into the "customers" table
    INSERT INTO customers (id, name, credit_limit) VALUES (1, 'John Doe', 1000);
    INSERT INTO customers (id, name, credit_limit) VALUES (2, 'Jane Smith', 1500);
    INSERT INTO customers (id, name, credit_limit) VALUES (3, 'Bob Johnson', 1200);
    INSERT INTO customers (id, name, credit_limit) VALUES (4, 'Alice Brown', 2000);
    INSERT INTO customers (id, name, credit_limit) VALUES (5, 'Charlie Davis', 800);
    INSERT INTO customers (id, name, credit_limit) VALUES (6, 'Eva White', 2500);
    INSERT INTO customers (id, name, credit_limit) VALUES (7, 'Frank Miller', 1700);
    INSERT INTO customers (id, name, credit_limit) VALUES (8, 'Grace Turner', 1300);
    INSERT INTO customers (id, name, credit_limit) VALUES (9, 'Henry Harris', 1800);
    INSERT INTO customers (id, name, credit_limit) VALUES (10, 'Ivy Green', 900);

    -- Insert 5 rows into the "contacts" table
    INSERT INTO contacts (id, customer_id, email) VALUES (1, 1, 'john.doe@email.com');
    INSERT INTO contacts (id, customer_id, email) VALUES (2, 3, 'bob.johnson@email.com');
    INSERT INTO contacts (id, customer_id, email) VALUES (3, 5, 'charlie.davis@email.com');
    INSERT INTO contacts (id, customer_id, email) VALUES (4, 7, 'frank.miller@email.com');
    INSERT INTO contacts (id, customer_id, email) VALUES (5, 9, 'henry.harris@email.com');
#END;