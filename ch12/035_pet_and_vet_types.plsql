DROP TYPE pet_t
/
DROP TYPE vet_visits_t
/
DROP TYPE vet_visit_t
/

CREATE OR REPLACE TYPE vet_visit_t IS OBJECT
   (visit_date DATE, reason VARCHAR2 (100))
/

CREATE TYPE vet_visits_t IS TABLE OF vet_visit_t
/

CREATE TYPE pet_t IS OBJECT
   (tag_no INTEGER
  , name VARCHAR2 (60)
  , petcare vet_visits_t
  , MEMBER FUNCTION set_tag_no (new_tag_no IN INTEGER)
       RETURN pet_t
   )
/