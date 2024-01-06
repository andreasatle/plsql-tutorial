DECLARE
    -- Create a new Exception
    e1 EXCEPTION;
    
    -- Assign the Exception to an error code
    PRAGMA exception_init (e1, -20001);
BEGIN
    DBMS_OUTPUT.PUT_LINE('Hello, PL/SQL!');
    
    -- Use a pre-defined exception zero_divide
    --RAISE ZERO_DIVIDE;

    -- Use the user defined Exception
    --RAISE e1;
    raise_application_error(-20001, 'Exception: e1');
EXCEPTION
    -- User defined error
    WHEN e1 THEN
        DBMS_OUTPUT.PUT_LINE( 'e1: ' || SQLCODE || ' : ' || SQLERRM );    

    -- Pre-defined error
    WHEN ZERO_DIVIDE THEN
        DBMS_OUTPUT.PUT_LINE( 'ZERO_DIVIDE: ' || SQLCODE || ' : ' || SQLERRM );

    -- OTHERS work like an ELSE for errors
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE( 'OTHERS: ' || SQLCODE || ' : ' || SQLERRM );
END;