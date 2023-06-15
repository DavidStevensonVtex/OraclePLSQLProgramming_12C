DROP TABLE personality_inventory
/

CREATE TABLE personality_inventory
(
   person_id         NUMBER
 , favorite_colors   color_tab_t
 , date_tested       DATE
 , test_results      BLOB
)
NESTED TABLE favorite_colors
   STORE AS favorite_colors_st
/