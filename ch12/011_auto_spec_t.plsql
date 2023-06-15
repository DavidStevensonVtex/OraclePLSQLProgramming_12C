DROP TYPE auto_spec_t FORCE
/

CREATE OR REPLACE TYPE auto_spec_t AS OBJECT
   (make VARCHAR2 (30), model VARCHAR2 (30), available_colors color_tab_t);
/

DROP TABLE auto_specs
/

CREATE TABLE auto_specs OF auto_spec_t
NESTED TABLE available_colors
   STORE AS available_colors_st
/