DECLARE
   l_title   books.title%TYPE;
BEGIN
    SELECT title
    INTO l_title
    FROM books
    WHERE isbn = '1-56592-335-9';

    DBMS_OUTPUT.PUT_LINE('book title: ' || l_title);
END;
/