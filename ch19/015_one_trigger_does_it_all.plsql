DROP TABLE account_transaction;
DROP TABLE account;
DROP TRIGGER three_for_the_price_of_one ;

DROP SEQUENCE account_transaction_seq;

CREATE TABLE account
(account_id    NUMBER       NOT NULL PRIMARY KEY,
 account_owner VARCHAR2(30) NOT NULL);

CREATE TABLE account_transaction
(transaction_id     NUMBER NOT NULL PRIMARY KEY,
 account_id         NUMBER NOT NULL,
 transaction_type   VARCHAR2(3) NOT NULL,
 transaction_amount NUMBER NOT NULL,
 comments           VARCHAR2(30),
created_by          VARCHAR2(30),
created_date        DATE,
LAST_UPDATED_BY     VARCHAR2(30),
LAST_UPDATED_DATE   DATE,
	CONSTRAINT trx_to_acct
	FOREIGN KEY (account_id)
	REFERENCES account (account_id));

CREATE SEQUENCE account_transaction_seq;
/


/*-- one_trigger_does_it_all.sql */
-- Determining the DML action within a trigger.
CREATE OR REPLACE TRIGGER three_for_the_price_of_one
BEFORE DELETE OR INSERT OR UPDATE ON account_transaction
FOR EACH ROW
BEGIN
  -- track who created the new row
  IF INSERTING THEN
    :NEW.created_by := USER;
    :NEW.created_date := SYSDATE;
  ELSIF DELETING THEN
       -- for delete write and audit using a
       -- central procedure
      --  audit_deletion(USER,SYSDATE);
       NULL ;
  -- track who last updated the row
  ELSIF UPDATING THEN
    :NEW.LAST_UPDATED_BY := USER;
    :NEW.LAST_UPDATED_DATE := SYSDATE;
  END IF;
END;
/


/*======================================================================
| Supplement to the third edition of Oracle PL/SQL Programming by Steven
| Feuerstein with Bill Pribyl, Copyright (c) 1997-2002 O'Reilly &
| Associates, Inc. To submit corrections or find more code samples visit
| http://www.oreilly.com/catalog/oraclep3/
*/
