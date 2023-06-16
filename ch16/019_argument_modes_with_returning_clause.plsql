CREATE TABLE ceo_compensation (company_id INTEGER, salary NUMBER)
/

CREATE OR REPLACE PROCEDURE wrong_incentive (company_in  IN INTEGER
                                           , new_layoffs IN NUMBER
                                            )
IS
   sql_string          VARCHAR2 (32767);
   sal_after_layoffs   NUMBER;
BEGIN
   sql_string := 'UPDATE ceo_compensation
          SET salary = salary + 10 * :layoffs
        WHERE company_id = :company
       RETURNING salary INTO :newsal';

   EXECUTE IMMEDIATE sql_string
      USING new_layoffs, company_in, OUT sal_after_layoffs;

   DBMS_OUTPUT.put_line (
      'CEO compensation after latest round of layoffs $' || sal_after_layoffs
   );
END;
/