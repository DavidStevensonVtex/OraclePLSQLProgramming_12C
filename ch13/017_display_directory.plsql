COLUMN owner format a10
COLUMN directory_name FORMAT a20
COLUMN directory_path FORMAT a40
set linesize 150

SELECT * FROM ALL_DIRECTORIES WHERE DIRECTORY_NAME = 'BFILE_DATA' ;