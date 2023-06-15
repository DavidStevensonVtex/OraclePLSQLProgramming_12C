DROP TABLE my_sons_collection
/

CREATE TABLE my_sons_collection
(
   name                    VARCHAR2 (100)
 , manufacturer            INTEGER
 , preference_level        INTEGER
 , sell_at_yardsale_flag   CHAR (1)
 , hours_used              NUMBER
)
/

DROP TABLE winterize
/

CREATE TABLE winterize
(
   task_id               INTEGER
 , task                  VARCHAR2 (100)
 , expected_hours        NUMBER
 , tools_required        VARCHAR2 (100)
 , do_it_yourself_flag   CHAR (1)
 , year_of_task          INTEGER
 , completed_flag        CHAR (1)
 , responsible           VARCHAR2 (100)
)
/

CREATE TABLE husband_config
(
   task_id                       INTEGER
 , max_procrastination_allowed   INTEGER
)
/
