DROP TABLE pet
/

CREATE TABLE pet (id NUMBER (38) CONSTRAINT pk_pet PRIMARY KEY NOT NULL)
/

CREATE OR REPLACE PACKAGE pets_inc
IS
   max_pets_in_facility   CONSTANT INTEGER := 120;
   pet_is_sick exception;

   CURSOR pet_cur (pet_id_in IN pet.id%TYPE)
      RETURN pet%ROWTYPE;

   FUNCTION next_pet_shots (pet_id_in IN pet.id%TYPE)
      RETURN DATE;

   PROCEDURE set_schedule (pet_id_in IN pet.id%TYPE);
END pets_inc;
/

CREATE OR REPLACE PACKAGE BODY pets_inc
IS
    CURSOR pet_cur (pet_id_in IN pet.id%TYPE)
        RETURN pet%ROWTYPE
    IS
        SELECT * FROM PET WHERE id = pet_id_in ;
    
    FUNCTION next_pet_shots (pet_id_in IN pet.id%TYPE)
        RETURN DATE
    IS
    BEGIN
        RETURN SYSDATE ;
    END next_pet_shots ;

    PROCEDURE set_schedule (pet_id_in IN pet.id%TYPE)
    IS
    BEGIN
        NULL ;
    END set_schedule ;
END pets_inc ;
/

DECLARE
   -- Base this constant on the id column of the pet table.
   c_pet                CONSTANT pet.id%TYPE := 1099;
   v_next_appointment   DATE;
BEGIN
   IF pets_inc.max_pets_in_facility > 100
   THEN
      OPEN pets_inc.pet_cur (c_pet);
   ELSE
      v_next_appointment := pets_inc.next_pet_shots (c_pet);
   END IF;
EXCEPTION
   WHEN pets_inc.pet_is_sick
   THEN
      pets_inc.set_schedule (c_pet);
END;
/