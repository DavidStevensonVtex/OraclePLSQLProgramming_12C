COLUMN trigger_name FORMAT a30
COLUMN status FORMAT a10
COLUMN table_name FORMAT a30
COLUMN triggering_event FORMAT a30
column base_object_type FORMAT a30
set linesize 200 
 SELECT TRIGGER_NAME, STATUS, TABLE_NAME, triggering_event, base_object_type 
 FROM USER_TRIGGERS ; 