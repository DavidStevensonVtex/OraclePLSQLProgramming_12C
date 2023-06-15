DROP TYPE first_names_t FORCE
/

CREATE OR REPLACE TYPE first_names_t IS VARRAY (2) OF VARCHAR2 (100);
/

DROP TYPE child_names_t FORCE
/

CREATE OR REPLACE TYPE child_names_t IS VARRAY (1) OF VARCHAR2 (100);
/

DROP TABLE family
/

CREATE TABLE family
(
   surname          VARCHAR2 (1000)
 , parent_names     first_names_t
 , children_names   child_names_t
)
/