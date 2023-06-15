DROP TABLE assemblies
/

CREATE TABLE assemblies
(
   tracking_id   NUMBER NOT NULL
 , start_time    timestamp NOT NULL
 , build_time    INTERVAL DAY TO SECOND
)
/