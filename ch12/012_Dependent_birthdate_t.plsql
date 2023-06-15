DROP TYPE Dependent_birthdate_t FORCE ;
/

CREATE TYPE Dependent_birthdate_t AS VARRAY(10) OF DATE ;
/

DROP TABLE EmployeesNew ;
/

CREATE TABLE EmployeesNew (
    ID      NUMBER,
    NAME    VARCHAR2(50),
    dependents_ages dependent_birthdate_t 
) ;

INSERT INTO EmployeesNew ( id, name, dependents_ages )
VALUES ( 10010, 'Zaphod Beelbebrox', dependent_birthdate_t('12-JAN-1763', '4-JUL-1977', '22-MAR-2021' ) ) ;

INSERT INTO EmployeesNew ( id, name, dependents_ages )
VALUES ( 10020, 'Molly Squiggley', dependent_birthdate_t('15-NOV-1968', '15-NOV-1968' ) ) ;

INSERT INTO EmployeesNew ( id, name, dependents_ages )
VALUES ( 10030, 'Joseph Josephs', dependent_birthdate_t() ) ;

INSERT INTO EmployeesNew ( id, name, dependents_ages )
VALUES ( 10040, 'Cepheus Usrbin', dependent_birthdate_t('27-JUN-1995', '9-AUG-1996', '19-JUN-1997' ) ) ;

INSERT INTO EmployeesNew ( id, name, dependents_ages )
VALUES ( 10050, 'Deirdre Quattlebaum', dependent_birthdate_t('21-SEP-1997' ) ) ;
/
column name format a25
column dependents_ages format a70
set linesize 200
SELECT * FROM EmployeesNew ;
/