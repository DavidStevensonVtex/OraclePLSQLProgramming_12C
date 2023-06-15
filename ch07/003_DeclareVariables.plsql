DECLARE
   -- Simple declaration of numeric variable
   l_total_count          NUMBER;

   -- Declaration of number that rounds to nearest hundredth (cent):
   l_dollar_amount        NUMBER (10, 2);

   -- A single datetime value, assigned a default value of the database server's
   -- system clock. Also, it can never be NULL
   l_right_now            DATE NOT NULL DEFAULT SYSDATE;

   -- Using the assignment operator for the default value specification
   l_favorite_flavor      VARCHAR2 (100) := 'Anything with chocolate, actually';

   -- Two-step declaration process for associative array.
   -- First, the type of table:
   TYPE list_of_books_t IS TABLE OF book%ROWTYPE
                              INDEX BY BINARY_INTEGER;

   -- And now the specific list to be manipulated in this block:
   oreilly_oracle_books   list_of_books_t;
BEGIN
   NULL;
END;
/